module t_flip_flop (
    input T,
    input clk,
    output reg Q
);
    always @(posedge clk) begin
        if (T)
            Q <= ~Q; // Toggle the output
        else
            Q <= Q;  // Retain the current state
    end
endmodule

