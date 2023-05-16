// N to S Binary Decoder
// From Digital Design Principles and Practices 5ed.
module NtoSbindec(A, EN, Y);
parameter N=3, S=8;
    input [N-1:0] A;
    input EN;
    output reg [S-1:0] Y;
    
    always @(*) begin
        Y = 0;  // Default: Outputs all 0
        if (EN==1) Y[A] = 1;    // If enabled, set selected bit
    end
endmodule
