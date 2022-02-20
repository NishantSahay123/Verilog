module jkff (input j,k,clear,clk, output reg q,output reg qbar);
always @ (posedge clk) begin
    if(clear==1) begin
    q<=0; qbar<=1;
    end
    else if(j==0 && k==1) begin
    q<=0; qbar<=1;
    end
    else if(j==1 && k==0) begin
    q<=1; qbar<=0;
    end
    else if(j==1 && k==1) begin
    qbar=~q;
    end
end
endmodule