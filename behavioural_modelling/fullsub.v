module fullsub(input x,y,z, output reg b,d);
always @ (x or y or z) begin
//    b = ~x&(y^z) | (y&z);
//    d = x^y^z;
if (x==0 && y==0 && z==0) begin
    d=0;
    b=0;
end

else if (x==0 && y==0 && z==1) begin
    d=1;
    b=1;
end

else if (x==0 && y==1 && z==0) begin
    d=1;
    b=1;
end

else if (x==0 && y==1 && z==1) begin
    d=1;
    b=1;
end

else if (x==1 && y==0 && z==0) begin
    d=1;
    b=0;
end

else if (x==1 && y==0 && z==1) begin
    d=0;
    b=0;
end

else if (x==1 && y==1 && z==0) begin
    d=0;
    b=0;
end

else if (x==1 && y==1 && z==1) begin
    d=1;
    b=1;
end

end
endmodule