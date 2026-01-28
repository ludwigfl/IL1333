//enabled ro with metastable prevention
module ro (ro_en,clk,ro_out);
  input      ro_en;
  input      clk;  
  output     ro_out;

  reg meta;

  wire       r0/* synthesis syn_keep=1 */;
  wire       r1/* synthesis syn_keep=1 */;
  wire       r2/* synthesis syn_keep=1 */;
  wire       r3/* synthesis syn_keep=1 */;
  wire       r4/* synthesis syn_keep=1 */;
  wire       r5/* synthesis syn_keep=1 */;
  wire       r6/* synthesis syn_keep=1 */;
  wire       r7/* synthesis syn_keep=1 */;
  wire       r8/* synthesis syn_keep=1 */;
  wire       r9/* synthesis syn_keep=1 */;
  wire       r10/* synthesis syn_keep=1 */;

always@(posedge clk)
if(clk)
  begin
    meta <= r0;
  end  

  //generate the ro
  nand   n1 (r1, r0, ro_en); 
  not    n2 (r2, r1);
  not    n3 (r3, r2);
  not    n4 (r4, r3);
  not    n5 (r5, r4);
  not    n6 (r6, r5);
  not    n7 (r7, r6);
  not    n8 (r8, r7);
  not    n9 (r9, r8);
  not    n10(r10, r9);
  not    n11(r0, r10);
 
  assign ro_out = meta; 
  
endmodule
