module t_tb;
reg clk,rst;
wire [2:0] Light_M1,Light_M2,Light_M3,Light_M4;
  wire [3:0]count;
  wire [2:0] ps;
  t_d k1(clk,rst,count,ps,Light_M1,Light_M2,Light_M3,Light_M4);
initial begin
  $dumpfile("t_tb.vcd");
  $dumpvars(1);
end
initial begin 
clk=0;
forever #10 clk=~clk;
end 
initial begin
      rst=0;
 #100;
  rst=1;
  #100;
 rst=0;
  #(10*50);
  $finish;
end
endmodule