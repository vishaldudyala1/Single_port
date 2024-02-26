module singleport(input re,we,input [15:0]data,input [2:0]addr); 
reg [15:0] mem[7:0]; 
integer i; 
always@(data,we,re,addr) 
begin 
if(we && ~re) 
mem[addr]=data; 
end 
assign data=(re && !we)?mem[addr]:16'bz; 
endmodule


// test
