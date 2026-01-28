module trng_core(clk,start,rst_n,ro_en,trng_out);
  input        clk; 
  input        rst_n;
  input        ro_en;
  input        start;
  output       trng_out;
  reg          trng_out;

//  wire    fr_h;
  wire    fr_h_1;
  wire    fr_h_2;  
  wire    fr_h_3;
  wire    fr_h_4;    
  reg     q1;
  reg     q2;

  always@(posedge clk or negedge rst_n)begin
    if(~rst_n)
      q1 <= 0;
     else
     q1 <= fr_h_1^fr_h_2^fr_h_3^fr_h_4;
  end
  
  always@(posedge clk or negedge rst_n)begin
    if(~rst_n)
      q2 <= 0;
     else
      q2 <= q1;
  end

  always@(posedge clk or negedge rst_n)begin
    if(~rst_n)
      trng_out <= 0;
     else if(start)
      trng_out <= q2;
     else;
  end

  fr_high fr_high_1(.ro_en ( ro_en ),
                  .clk    ( clk   ),
                  .fr_h  ( fr_h_1  )
  ); 
  
  fr_high fr_high_2(.ro_en ( ro_en ),
                  .clk    ( clk   ),
                  .fr_h  ( fr_h_2  )
  );
  
    fr_high fr_high_3(.ro_en ( ro_en ),
                  .clk    ( clk   ),
                  .fr_h  ( fr_h_3  )
  ); 
  
  fr_high fr_high_4(.ro_en ( ro_en ),
                  .clk    ( clk   ),
                  .fr_h  ( fr_h_4  )
  );

endmodule
