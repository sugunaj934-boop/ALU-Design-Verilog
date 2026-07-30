module alu (
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] opcode,
    output reg [7:0] result,
    output reg carry_out,
    output zero_flag
);

    assign zero_flag = (result == 8'b0);

    always @(*) begin
        carry_out = 0;
        case (opcode)
            3'b000: result = A + B;              // ADD
            3'b001: {carry_out, result} = A - B;  // SUB
            3'b010: result = A & B;               // AND
            3'b011: result = A | B;               // OR
            3'b100: result = A ^ B;               // XOR
            3'b101: result = ~A;                  // NOT
            3'b110: result = A << 1;              // Shift Left
            3'b111: result = A >> 1;              // Shift Right
            default: result = 8'b0;
        endcase
    end

endmodule
