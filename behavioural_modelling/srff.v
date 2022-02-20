module srff(input s,r,clk,clear, output reg q, output reg qbar);
always @ (posedge clk) begin
    if(clear) begin
        q<=0; qbar<=1;
    end
    else if (s==0 && r==1) begin
        q<=0; qbar<=1;
    end
    else if (s==1 && r==0) begin
        q<=1; qbar<=0;
    end
    
end
endmodule