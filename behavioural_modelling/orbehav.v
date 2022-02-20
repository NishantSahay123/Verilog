module orbehav(output reg c, input a,b);
always @ (a or b) begin
    if (a==1'b0 & b==1'b0) begin
        c = 1'b0;
    end
    else 
    c=1'b1;
end
endmodule