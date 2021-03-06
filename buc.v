module buc(clk,rst,din,valid,threshold);
   input clk,rst;
   input din,threshold;
   output valid;
   wire[10:0] data_buc;
   wire[3:0] threshold;
   buc_devider U1(.din_buc(data_buc),.threshold(threshold),.valid(valid));
   buc_recieve U2(.clk(clk),.rst(rst),.din(din),.dout_buc(data_buc));
endmodule