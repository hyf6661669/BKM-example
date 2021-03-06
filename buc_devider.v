module buc_devider(din_buc,threshold,valid);
  parameter LENGTH=11;
  parameter BUC=11'b11100010010;
  input[10:0] din_buc;
  input[3:0] threshold;
  output valid;
  reg valid;
  reg[4:0] sum;
  integer i;
  always@(din_buc)
    begin
      sum=0;
      for(i=0;i<LENGTH;i=i+1)
        if(din_buc[i]^~BUC[i]==1)
          sum=sum+1;
        else
          sum=sum-1;
    end
  
  always@(sum or threshold)
    begin
      if(sum[4]==0)
        begin
          if(sum[3:0]>=threshold)
            valid=1;
          else
            valid=0;
        end
      else
        valid=0;
    end
endmodule  
