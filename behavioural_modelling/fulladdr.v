module fulladdr(output reg s, output reg c, input wire a,b,cin);
always @ (a or b or cin) begin
    s = a ^ b ^ cin;
    c = (a&b) | (a^b) & cin;
/*case (a|b|cin)
    3'b000: begin s=0; c=0; end
    3'b001: begin s=1; c=0; end
    3'b010: begin s=1; c=0; end
    3'b011: begin s=0; c=1; end
    3'b100: begin s=1; c=0; end
    3'b101: begin s=0; c=1; end
    3'b110: begin s=0; c=1; end
    3'b111: begin s=1; c=1; end
endcase */ 
end
endmodule;