module fr_high (ro_en,clk,fr_h);
  input   ro_en;
  input   clk;  
  output  fr_h;

  wire ro1/* synthesis keep="1" */;
  wire ro2/* synthesis keep="1" */;
  wire ro3/* synthesis keep="1" */;
  wire ro4/* synthesis keep="1" */;
  wire ro5/* synthesis keep="1" */;
  wire ro6/* synthesis keep="1" */;
  wire ro7/* synthesis keep="1" */;
  wire ro8/* synthesis keep="1" */;
  wire ro9/* synthesis keep="1" */;
  wire ro10/* synthesis keep="1" */;
  wire ro11/* synthesis keep="1" */;
  wire ro12/* synthesis keep="1" */;
  wire ro13/* synthesis keep="1" */;
  wire ro14/* synthesis keep="1" */;
  wire ro15/* synthesis keep="1" */;
  wire ro16/* synthesis keep="1" */; 
  wire ro17/* synthesis keep="1" */;
  wire ro18/* synthesis keep="1" */;
  wire ro19/* synthesis keep="1" */;
  wire ro20/* synthesis keep="1" */;
  wire ro21/* synthesis keep="1" */;
  wire ro22/* synthesis keep="1" */;
  wire ro23/* synthesis keep="1" */;
  wire ro24/* synthesis keep="1" */;
  wire ro25/* synthesis keep="1" */;
  wire ro26/* synthesis keep="1" */;
  wire ro27/* synthesis keep="1" */;
  wire ro28/* synthesis keep="1" */;
  wire ro29/* synthesis keep="1" */;
  wire ro30/* synthesis keep="1" */;
  wire ro31/* synthesis keep="1" */;
  wire ro32/* synthesis keep="1" */; 
  
  ro U1(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro1   )
  );
  ro U2(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro2   )
  );
  ro U3(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro3   )
  );
  ro U4(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro4   )
  );
  ro U5(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro5   )
  );
  ro U6(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro6   )
  );
  ro U7(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro7   )
  );
  ro U8(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro8   )
  );
  ro U9(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro9   )
  );
  ro U10(.ro_en  ( ro_en ),
         .clk    ( clk   ),
         .ro_out ( ro10  )
  );
  ro U11(.ro_en  ( ro_en ),
         .clk    ( clk   ),
        .ro_out ( ro11   )
  );
  ro U12(.ro_en  ( ro_en ),
         .clk    ( clk   ),
        .ro_out ( ro12   )
  );
  ro U13(.ro_en  ( ro_en ),
         .clk    ( clk   ),
        .ro_out ( ro13   )
  );
  ro U14(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro14   )
  );
  ro U15(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro15   )
  );
  ro U16(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro16   )
  );
  ro U17(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro17   )
  );
  ro U18(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro18   )
  );
  ro U19(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro19   )
  );
  ro U20(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro20   )
  );
  ro U21(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro21   )
  );
  ro U22(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro22   )
  );
  ro U23(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro23   )
  );
  ro U24(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro24   )
  );
  ro U25(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro25   )
  );
  ro U26(.ro_en  ( ro_en ),
        .clk    ( clk   ),
         .ro_out ( ro26  )
  );
  ro U27(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro27   )
  );
  ro U28(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro28   )
  );
  ro U29(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro29   )
  );
  ro U30(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro30   )
  );
  ro U31(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro31   )
  );
  ro U32(.ro_en  ( ro_en ),
        .clk    ( clk   ),
        .ro_out ( ro32   )
  );

 // assign fr_h = ro1 ^ ro2 ^ ro3 ^ ro4 ^ ro5 ^ ro6 ^ ro7 ^ ro8 ^ ro9 ^ ro10;
 //assign fr_h = ro1 ^ ro2 ^ ro3 ^ ro4 ^ ro5 ^ ro6 ^ ro7 ^ ro8 ^ ro9 ^ ro10 ^ ro11 ^ ro12 ^ ro13 ^ ro14 ^ ro15 ^ ro16;
 assign fr_h = ro1 ^ ro2 ^ ro3 ^ ro4 ^ ro5 ^ ro6 ^ ro7 ^ ro8 ^ ro9 ^ ro10 ^ ro11 ^ ro12 ^ ro13 ^ ro14 ^ ro15 ^ ro16 ^ 
 ro17 ^ ro18 ^ ro19 ^ ro20 ^ ro21 ^ ro22 ^ ro23 ^ ro24 ^ ro25 ^ ro26 ^ ro27 ^ ro28 ^ ro29 ^ ro30 ^ ro31 ^ ro32;

endmodule