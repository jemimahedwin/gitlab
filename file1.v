module D_FF_gate(input D, input clk, output Q, output Qn);
    wire Dn, S, R;
    
    not (Dn, D);           // Invert D
    nand (S, D, clk);      // Set input
    nand (R, Dn, clk);     // Reset input
    nand (Q, S, Qn);       // Output Q
    nand (Qn, R, Q);       // Output Qn
endmodule
