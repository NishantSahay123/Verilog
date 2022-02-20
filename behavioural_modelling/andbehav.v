module andbhev(input a,b, output reg c);
always @ (a or b) begin
    if (a==1'b1 & b==1'b1) begin
        c = 1'b1;
    end
    else 
        c = 1'b0;
end
endmodule 