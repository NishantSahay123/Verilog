module dff(input d,clk,clear, output reg q, output reg qbar);
always @ (posedge clk)
begin
    if(clear) begin
        q<=0;
        qbar<=1;
    end
    else begin 
        q<=d;
        qbar<=~d;
    end
end
endmodule