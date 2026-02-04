//enabled ro with metastable prevention
module ro (ro_en,clk,ro_out);
  input      ro_en;
  input      clk;  
  output reg     ro_out;

  reg meta1;
  reg meta2;
  reg meta3;
  reg prev_bit;

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

  wire       r11/* synthesis syn_keep=1 */;
  wire       r12/* synthesis syn_keep=1 */;
  wire       r13/* synthesis syn_keep=1 */;
  wire       r14/* synthesis syn_keep=1 */;
  wire       r15/* synthesis syn_keep=1 */;
  wire       r16/* synthesis syn_keep=1 */;
  wire       r17/* synthesis syn_keep=1 */;
  wire       r18/* synthesis syn_keep=1 */;
  wire       r19/* synthesis syn_keep=1 */;
  wire       r20/* synthesis syn_keep=1 */;
  wire       r21/* synthesis syn_keep=1 */;
  wire       r22/* synthesis syn_keep=1 */;
  wire       r23/* synthesis syn_keep=1 */;

  wire       r24/* synthesis syn_keep=1 */;
  wire       r25/* synthesis syn_keep=1 */;
  wire       r26/* synthesis syn_keep=1 */;
  wire       r27/* synthesis syn_keep=1 */;
  wire       r28/* synthesis syn_keep=1 */;
  wire       r29/* synthesis syn_keep=1 */;
  wire       r30/* synthesis syn_keep=1 */;
  wire       r31/* synthesis syn_keep=1 */;
  wire       r32/* synthesis syn_keep=1 */;
  wire       r33/* synthesis syn_keep=1 */;
  wire       r34/* synthesis syn_keep=1 */;
  wire       r35/* synthesis syn_keep=1 */;
  wire       r36/* synthesis syn_keep=1 */;
  wire       r37/* synthesis syn_keep=1 */;
  wire       r38/* synthesis syn_keep=1 */;
  wire       r39/* synthesis syn_keep=1 */;
  wire       r40/* synthesis syn_keep=1 */;

  wire       raw;

always@(posedge clk)
if(clk)
  begin
    meta1 <= r0;
    meta2 <= r11; 
    meta3 <= r24;

    if(prev_bit == 1 && raw == 0 ) begin
        ro_out <= 1'b1;
    end

    if(prev_bit == 0 && raw == 1 ) begin
        ro_out <= 1'b0;
    end

    prev_bit <= raw;

  end  

  //generate the first ro
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

  //generate the second ro
  nand   n12 (r12, r11, ro_en); 
  not    n13 (r13, r12);
  not    n14 (r14, r13);
  not    n15 (r15, r14);
  not    n16 (r16, r15);
  not    n17 (r17, r16);
  not    n18 (r18, r17);
  not    n19 (r19, r18);
  not    n20 (r20, r19);
  not    n21(r21, r20);
  not    n22(r22, r21);
  not    n23(r23, r22);
  not    n24(r11, r23);

  //generate the third ro
  nand   n25 (r25, r24, ro_en); 
  not    n26 (r26, r25);
  not    n27 (r27, r26);
  not    n28 (r28, r27);
  not    n29 (r29, r28);
  not    n30 (r30, r29);
  not    n31 (r31, r30);
  not    n32 (r32, r31);
  not    n33 (r33, r32);
  not    n34(r34, r33);
  not    n35(r35, r34);
  not    n36(r36, r35);
  not    n37(r37, r36);
  not    n38(r38, r37);
  not    n39(r39, r38);
  not    n40(r40, r39);
  not    n41(r25, r40);
 
  assign raw = meta1 ^ meta2 ^ meta3; //XOR the ROs
  
endmodule
