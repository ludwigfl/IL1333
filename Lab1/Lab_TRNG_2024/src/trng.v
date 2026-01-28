module trng(clk,rst_n,ro_en,start,will_send,data_vld,tx_rdy);
  input        clk;
  input        rst_n;
  input        ro_en;
  input        start;
  input        tx_rdy;
  output [7:0] will_send;
  output       data_vld;
  reg          data_vld;

  reg    [7:0] will_send;

  reg    [2:0] cnt_8;

  always@(posedge clk or negedge rst_n)begin
    if(!rst_n)
      cnt_8 <= #1 3'b0;
    else if(start)
      cnt_8<=  #1 cnt_8 + 1;
  end
 
  wire trng_out;
  always@(posedge clk or negedge rst_n)begin
    if(!rst_n)
      will_send <=  #1 8'b0;
    else if(start)
      will_send[cnt_8] <=  #1 trng_out;
    else;
  end


  always@(posedge clk or negedge rst_n)begin
    if(!rst_n)
      data_vld <= #1 0;
    else if(cnt_8==7 & start & tx_rdy)
      data_vld <= #1 1;
    else 
      data_vld <= #1 0;
  end
  
  trng_core trng_core(.clk     ( clk     ),
                      .rst_n   ( rst_n   ),
                      .start   ( start   ),
							 .ro_en   (ro_en),
                      .trng_out( trng_out)
  );
endmodule 
