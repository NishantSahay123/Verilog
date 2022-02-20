module tff(input t, clk, clear, output reg q, output reg qbar);
always @ (posedge clk) begin
    if (clear==1) begin
        q<=0; qbar<=1;
    end
    else if (t==1) begin
        q=~q; qbar=~qbar;
    end
end
endmodule