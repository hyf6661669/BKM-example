module buc_recieve(clk,rst,din,dout_buc);
   input clk,rst;
   input din;
   output[10:0] dout_buc;
   reg [10:0] dout_buc;
   always@(posedge clk or negedge rst)
      if(!rst)
        begin
          dout_buc<=11'b0;
        end
      else
        begin
          dout_buc<={dout_buc[9:0],din};
        end
endmodule