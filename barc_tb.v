module barc_tb;
	reg clk,rst,din;
	reg[3:0]threshold;
	reg[32:0]data;
	
	initial
		begin
			clk=1'b0;
			forever #10 clk=~clk;
		end
	
	initial
		begin
			rst=1'b0;
			#5 rst=1'b1;
		end
	
	initial
		begin
			data =33'b11100010011_11100010001_11100010010;
			threshold=4'b1001;
		end
	integer i;
	always@(posedge clk or negedge rst)
		if(!rst)
			begin 
				din=1'b0;
				i=32;
			end
		else
			begin 
				if(i==0)
					begin
						din=data[i];
						i=32;
					end
				else
				begin
					din=data[i];
					i=i-1;
				end
			end
buc V1(.clk(clk),.rst(rst),.din(din),.valid(valid),.threshold(threshold));
endmodule