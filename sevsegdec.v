// Seven Segment Decoder Module
// From Digital Design Principles and Practices 5ed.

module sevsegdec(DIG, EN, SEGA, SEGB, SEGC, SEGD, SEGE, SEGF, SEGG);
    input [3:0] DIG;
    input EN;
    output reg SEGA, SEGB, SEGC, SEGD, SEGE, SEGF, SEGG;
    reg [1:7] SEGS;
  
    always @(DIG or EN or SEGS) begin
        if (EN)
            case (DIG)
                // Segment patterns abcdefg
                4'd0: SEGS = 7'b1111110;    // 0
                4'd1: SEGS = 7'b0110000;    // 1
                4'd2: SEGS = 7'b1101101;    // 2
                4'd3: SEGS = 7'b1111001;    // 3
                4'd4: SEGS = 7'b0110011;    // 4
                4'd5: SEGS = 7'b1011011;    // 5
                4'd6: SEGS = 7'b1011111;    // 6
                4'd7: SEGS = 7'b1110000;    // 7
                4'd8: SEGS = 7'b1111111;    // 8
                4'd9: SEGS = 7'b1110011;    // 9
                default SEGS = 7'bxxxxxxx;
            endcase
        else
            SEGS = 7'b0000000;
        {SEGA, SEGB, SEGC, SEGD, SEGE, SEGF, SEGG} = SEGS;
    end
endmodule
