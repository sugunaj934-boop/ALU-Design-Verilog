module testbench;
    reg [7:0] A, B;
    reg [2:0] opcode;
    wire [7:0] result;
    wire carry_out, zero_flag;

    alu uut (
        .A(A), .B(B), .opcode(opcode),
        .result(result), .carry_out(carry_out), .zero_flag(zero_flag)
    );

    task run_test(input [7:0] a_val, input [7:0] b_val, input [2:0] op, input [127:0] op_name);
        begin
            A = a_val; B = b_val; opcode = op;
            #5;
            $display("Op: %-10s A=%d B=%d Result=%d Carry=%b Zero=%b",
                       op_name, A, B, result, carry_out, zero_flag);
        end
    endtask

    initial begin
        $display("---- ALU Test Start ----");
        run_test(8'd15, 8'd10, 3'b000, "ADD");
        run_test(8'd15, 8'd10, 3'b001, "SUB");
        run_test(8'd15, 8'd10, 3'b010, "AND");
        run_test(8'd15, 8'd10, 3'b011, "OR");
        run_test(8'd15, 8'd10, 3'b100, "XOR");
        run_test(8'd15, 8'd10, 3'b101, "NOT");
        run_test(8'd15, 8'd10, 3'b110, "SHIFT_LEFT");
        run_test(8'd15, 8'd10, 3'b111, "SHIFT_RIGHT");
        $display("---- ALU Test End ----");
        $finish;
    end
endmodule
