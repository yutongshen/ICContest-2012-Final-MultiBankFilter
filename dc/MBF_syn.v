
module MBF_DW01_inc_0 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  INVXL U1 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module MBF_DW01_sub_16 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   n10, n21, n23, n24, n25, n26, n30, n31, n35, n37, n38, n39, n40, n44,
         n45, n53, n57, n58, n64, n65, n70, n71, n75, n76, n87, n88, n95, n172,
         n175, n176, n177, n13, n2, n173, n174, n178, n12, n54, n7, n55, n56,
         n63, n8, n36, n5, n41, n6, n72, n9, n27, n4, n22, n3, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228;

  AOI21X1 U197 ( .A0(n188), .A1(n205), .B0(n204), .Y(n41) );
  AOI21X1 U201 ( .A0(n188), .A1(n200), .B0(n199), .Y(n27) );
  AOI21X1 U214 ( .A0(n188), .A1(n219), .B0(n202), .Y(n72) );
  OAI21XL U228 ( .A0(n206), .A1(n57), .B0(n58), .Y(n56) );
  NOR2X1 U221 ( .A(n44), .B(n39), .Y(n37) );
  OR2X1 U251 ( .A(n224), .B(A[14]), .Y(n177) );
  XOR2X1 U195 ( .A(n41), .B(n6), .Y(DIFF[12]) );
  XOR2X1 U199 ( .A(n27), .B(n4), .Y(DIFF[14]) );
  OR2X1 U258 ( .A(n225), .B(A[15]), .Y(n178) );
  XOR2X1 U212 ( .A(n72), .B(n9), .Y(DIFF[9]) );
  XNOR2X1 U153 ( .A(n188), .B(n10), .Y(DIFF[8]) );
  AND2X2 U223 ( .A(n227), .B(n175), .Y(n172) );
  OAI21X1 U216 ( .A0(n70), .A1(n76), .B0(n71), .Y(n65) );
  NAND2X1 U161 ( .A(n228), .B(A[9]), .Y(n58) );
  NAND2X1 U249 ( .A(n216), .B(A[10]), .Y(n53) );
  AOI21X1 U205 ( .A0(n188), .A1(n37), .B0(n38), .Y(n36) );
  NAND2X1 U204 ( .A(n176), .B(n35), .Y(n5) );
  XOR2X1 U203 ( .A(n36), .B(n5), .Y(DIFF[13]) );
  NAND2X1 U224 ( .A(n37), .B(n176), .Y(n30) );
  NOR2X1 U222 ( .A(n30), .B(n25), .Y(n23) );
  AOI21X1 U217 ( .A0(n38), .A1(n176), .B0(n217), .Y(n31) );
  AOI21X1 U208 ( .A0(n188), .A1(n23), .B0(n24), .Y(n22) );
  NAND2X1 U207 ( .A(n177), .B(n21), .Y(n3) );
  XOR2X1 U206 ( .A(n22), .B(n3), .Y(DIFF[15]) );
  NAND2X1 U196 ( .A(n203), .B(n40), .Y(n6) );
  NAND2X1 U200 ( .A(n198), .B(n26), .Y(n4) );
  OAI2BB1X1 U226 ( .A0N(n24), .A1N(n177), .B0(n21), .Y(n174) );
  AOI21X1 U239 ( .A0(n188), .A1(n173), .B0(n174), .Y(n13) );
  NAND2X1 U240 ( .A(n225), .B(A[15]), .Y(n12) );
  NAND2X1 U238 ( .A(n178), .B(n12), .Y(n2) );
  XOR2X1 U237 ( .A(n13), .B(n2), .Y(DIFF[16]) );
  AOI21X1 U211 ( .A0(n188), .A1(n64), .B0(n65), .Y(n63) );
  XOR2X1 U209 ( .A(n63), .B(n8), .Y(DIFF[10]) );
  NAND2X1 U213 ( .A(n201), .B(n71), .Y(n9) );
  AOI21X1 U193 ( .A0(n188), .A1(n55), .B0(n56), .Y(n54) );
  NAND2X1 U192 ( .A(n175), .B(n53), .Y(n7) );
  XOR2X1 U191 ( .A(n54), .B(n7), .Y(DIFF[11]) );
  NAND2X1 U187 ( .A(n219), .B(n76), .Y(n10) );
  NOR2X1 U162 ( .A(n220), .B(A[7]), .Y(n75) );
  NAND2X1 U248 ( .A(n220), .B(A[7]), .Y(n76) );
  NOR2X1 U177 ( .A(n221), .B(A[13]), .Y(n25) );
  NOR2X1 U176 ( .A(n222), .B(A[11]), .Y(n39) );
  OR2X1 U243 ( .A(n218), .B(A[12]), .Y(n176) );
  NOR2X1 U174 ( .A(n226), .B(A[8]), .Y(n70) );
  NOR2X1 U170 ( .A(n75), .B(n70), .Y(n64) );
  NOR2X1 U175 ( .A(n228), .B(A[9]), .Y(n57) );
  OR2X1 U242 ( .A(n216), .B(A[10]), .Y(n175) );
  NAND2X1 U154 ( .A(n64), .B(n172), .Y(n44) );
  AND2X1 U225 ( .A(n23), .B(n177), .Y(n173) );
  NAND2XL U256 ( .A(n224), .B(A[14]), .Y(n21) );
  NAND2XL U257 ( .A(n221), .B(A[13]), .Y(n26) );
  NAND2XL U210 ( .A(n227), .B(n58), .Y(n8) );
  NAND2XL U255 ( .A(n218), .B(A[12]), .Y(n35) );
  NAND2XL U250 ( .A(n222), .B(A[11]), .Y(n40) );
  NAND2XL U164 ( .A(n226), .B(A[8]), .Y(n71) );
  CLKINVX1 U141 ( .A(B[6]), .Y(n208) );
  AOI2BB1X1 U142 ( .A0N(n208), .A1N(A[6]), .B0(n215), .Y(n213) );
  NAND2BX1 U143 ( .AN(A[0]), .B(B[0]), .Y(n197) );
  INVXL U144 ( .A(n175), .Y(n182) );
  OAI21XL U145 ( .A0(n58), .A1(n182), .B0(n53), .Y(n183) );
  AOI21X1 U146 ( .A0(n172), .A1(n65), .B0(n183), .Y(n45) );
  NAND2X1 U147 ( .A(A[6]), .B(n208), .Y(n184) );
  OAI2BB2XL U148 ( .B0(n215), .B1(n184), .A0N(n223), .A1N(B[7]), .Y(n214) );
  OAI211X1 U149 ( .A0(n209), .A1(A[4]), .B0(n213), .C0(n190), .Y(n185) );
  AOI21X1 U150 ( .A0(n87), .A1(n213), .B0(n214), .Y(n186) );
  OAI21X4 U151 ( .A0(n189), .A1(n185), .B0(n186), .Y(n188) );
  NAND2X1 U152 ( .A(A[4]), .B(n209), .Y(n187) );
  OAI2BB2XL U155 ( .B0(n88), .B1(n187), .A0N(n212), .A1N(A[5]), .Y(n87) );
  NOR2BX1 U156 ( .AN(n64), .B(n57), .Y(n55) );
  INVXL U157 ( .A(B[1]), .Y(n207) );
  INVX1 U158 ( .A(B[3]), .Y(n211) );
  OAI21X1 U159 ( .A0(n210), .A1(A[2]), .B0(n196), .Y(n192) );
  OAI21X1 U160 ( .A0(n45), .A1(n39), .B0(n40), .Y(n38) );
  NOR2X1 U163 ( .A(n223), .B(B[7]), .Y(n215) );
  NOR2X1 U165 ( .A(n211), .B(A[3]), .Y(n95) );
  CLKINVX1 U166 ( .A(B[5]), .Y(n212) );
  NOR2X1 U167 ( .A(n212), .B(A[5]), .Y(n88) );
  OAI21XL U168 ( .A0(n31), .A1(n25), .B0(n26), .Y(n24) );
  INVXL U169 ( .A(A[7]), .Y(n223) );
  INVX1 U171 ( .A(n30), .Y(n200) );
  CLKINVX1 U172 ( .A(B[4]), .Y(n209) );
  INVX1 U173 ( .A(n44), .Y(n205) );
  INVX1 U178 ( .A(A[12]), .Y(n222) );
  INVX1 U179 ( .A(n57), .Y(n227) );
  INVX1 U180 ( .A(A[9]), .Y(n226) );
  INVX1 U181 ( .A(A[14]), .Y(n221) );
  CLKINVX1 U182 ( .A(A[10]), .Y(n228) );
  INVX1 U183 ( .A(A[8]), .Y(n220) );
  INVX1 U184 ( .A(n76), .Y(n202) );
  INVX1 U185 ( .A(n75), .Y(n219) );
  INVX1 U186 ( .A(A[16]), .Y(n225) );
  INVX1 U188 ( .A(n45), .Y(n204) );
  INVX1 U189 ( .A(A[15]), .Y(n224) );
  OA21X4 U190 ( .A0(n191), .A1(n192), .B0(n193), .Y(n189) );
  CLKINVX1 U194 ( .A(B[2]), .Y(n210) );
  INVX1 U198 ( .A(n65), .Y(n206) );
  INVX1 U202 ( .A(n70), .Y(n201) );
  INVX1 U215 ( .A(n25), .Y(n198) );
  INVX1 U218 ( .A(n31), .Y(n199) );
  INVX1 U219 ( .A(n39), .Y(n203) );
  INVX1 U220 ( .A(n35), .Y(n217) );
  INVX1 U227 ( .A(A[13]), .Y(n218) );
  INVX1 U229 ( .A(A[11]), .Y(n216) );
  INVX1 U230 ( .A(n88), .Y(n190) );
  AOI22X1 U231 ( .A0(n210), .A1(n194), .B0(n211), .B1(A[3]), .Y(n193) );
  NOR2X1 U232 ( .A(n95), .B(n195), .Y(n194) );
  INVX1 U233 ( .A(A[2]), .Y(n195) );
  INVX1 U234 ( .A(n95), .Y(n196) );
  ACHCONX2 U235 ( .A(A[1]), .B(n197), .CI(n207), .CON(n191) );
endmodule


module MBF_DW01_sub_17 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   n10, n21, n23, n24, n25, n26, n30, n31, n35, n37, n38, n39, n40, n44,
         n45, n53, n57, n58, n64, n65, n70, n71, n75, n76, n85, n87, n88, n95,
         n172, n175, n176, n177, n13, n2, n173, n174, n178, n12, n54, n7, n55,
         n56, n63, n8, n36, n5, n41, n6, n72, n9, n27, n4, n22, n3, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228;

  OAI21XL U228 ( .A0(n204), .A1(n57), .B0(n58), .Y(n56) );
  NOR2X1 U162 ( .A(n226), .B(A[7]), .Y(n75) );
  OR2X1 U242 ( .A(n218), .B(A[10]), .Y(n175) );
  NOR2X1 U176 ( .A(n220), .B(A[11]), .Y(n39) );
  NOR2X1 U177 ( .A(n219), .B(A[13]), .Y(n25) );
  OR2X1 U251 ( .A(n228), .B(A[14]), .Y(n177) );
  OR2X1 U258 ( .A(n227), .B(A[15]), .Y(n178) );
  XNOR2X1 U152 ( .A(n215), .B(n10), .Y(DIFF[8]) );
  NOR2X1 U232 ( .A(n210), .B(A[5]), .Y(n88) );
  NAND2X1 U160 ( .A(n206), .B(A[6]), .Y(n85) );
  NOR2X1 U170 ( .A(n75), .B(n70), .Y(n64) );
  AND2X2 U223 ( .A(n222), .B(n175), .Y(n172) );
  NAND2X1 U154 ( .A(n64), .B(n172), .Y(n44) );
  NOR2X1 U221 ( .A(n44), .B(n39), .Y(n37) );
  NAND2X1 U224 ( .A(n37), .B(n176), .Y(n30) );
  NAND2X1 U248 ( .A(n226), .B(A[7]), .Y(n76) );
  OAI21X1 U216 ( .A0(n70), .A1(n76), .B0(n71), .Y(n65) );
  NAND2X1 U161 ( .A(n223), .B(A[9]), .Y(n58) );
  NAND2X1 U249 ( .A(n218), .B(A[10]), .Y(n53) );
  NAND2X1 U250 ( .A(n220), .B(A[11]), .Y(n40) );
  NAND2X1 U255 ( .A(n217), .B(A[12]), .Y(n35) );
  AOI21X1 U217 ( .A0(n38), .A1(n176), .B0(n216), .Y(n31) );
  AOI21X1 U201 ( .A0(n215), .A1(n198), .B0(n197), .Y(n27) );
  NAND2X1 U200 ( .A(n196), .B(n26), .Y(n4) );
  XOR2X1 U199 ( .A(n27), .B(n4), .Y(DIFF[14]) );
  AOI21X1 U205 ( .A0(n215), .A1(n37), .B0(n38), .Y(n36) );
  NAND2X1 U204 ( .A(n176), .B(n35), .Y(n5) );
  XOR2X1 U203 ( .A(n36), .B(n5), .Y(DIFF[13]) );
  NOR2X1 U222 ( .A(n30), .B(n25), .Y(n23) );
  AOI21X1 U208 ( .A0(n215), .A1(n23), .B0(n24), .Y(n22) );
  NAND2X1 U256 ( .A(n228), .B(A[14]), .Y(n21) );
  NAND2X1 U207 ( .A(n177), .B(n21), .Y(n3) );
  XOR2X1 U206 ( .A(n22), .B(n3), .Y(DIFF[15]) );
  AOI21X1 U197 ( .A0(n215), .A1(n203), .B0(n202), .Y(n41) );
  NAND2X1 U196 ( .A(n201), .B(n40), .Y(n6) );
  XOR2X1 U195 ( .A(n41), .B(n6), .Y(DIFF[12]) );
  OAI2BB1X1 U226 ( .A0N(n24), .A1N(n177), .B0(n21), .Y(n174) );
  AOI21X1 U239 ( .A0(n215), .A1(n173), .B0(n174), .Y(n13) );
  NAND2X1 U240 ( .A(n227), .B(A[15]), .Y(n12) );
  NAND2X1 U238 ( .A(n178), .B(n12), .Y(n2) );
  XOR2X1 U237 ( .A(n13), .B(n2), .Y(DIFF[16]) );
  AOI21X1 U211 ( .A0(n215), .A1(n64), .B0(n65), .Y(n63) );
  XOR2X1 U209 ( .A(n63), .B(n8), .Y(DIFF[10]) );
  AOI21X1 U214 ( .A0(n215), .A1(n225), .B0(n200), .Y(n72) );
  NAND2X1 U213 ( .A(n199), .B(n71), .Y(n9) );
  XOR2X1 U212 ( .A(n72), .B(n9), .Y(DIFF[9]) );
  AOI21X1 U193 ( .A0(n215), .A1(n55), .B0(n56), .Y(n54) );
  NAND2X1 U192 ( .A(n175), .B(n53), .Y(n7) );
  XOR2X1 U191 ( .A(n54), .B(n7), .Y(DIFF[11]) );
  NAND2X1 U187 ( .A(n225), .B(n76), .Y(n10) );
  NOR2X1 U174 ( .A(n221), .B(A[8]), .Y(n70) );
  OR2X1 U243 ( .A(n217), .B(A[12]), .Y(n176) );
  NOR2X1 U175 ( .A(n223), .B(A[9]), .Y(n57) );
  NAND2XL U210 ( .A(n222), .B(n58), .Y(n8) );
  NAND2XL U257 ( .A(n219), .B(A[13]), .Y(n26) );
  AND2X1 U225 ( .A(n23), .B(n177), .Y(n173) );
  NAND2XL U164 ( .A(n221), .B(A[8]), .Y(n71) );
  NAND2BX1 U141 ( .AN(A[0]), .B(B[0]), .Y(n195) );
  INVXL U142 ( .A(n175), .Y(n182) );
  OAI21XL U143 ( .A0(n58), .A1(n182), .B0(n53), .Y(n183) );
  AOI21X1 U144 ( .A0(n172), .A1(n65), .B0(n183), .Y(n45) );
  NAND2X1 U145 ( .A(A[4]), .B(n207), .Y(n184) );
  OAI2BB2XL U146 ( .B0(n88), .B1(n184), .A0N(n210), .A1N(A[5]), .Y(n87) );
  AOI2BB1X1 U147 ( .A0N(n206), .A1N(A[6]), .B0(n214), .Y(n212) );
  NOR2BX1 U148 ( .AN(n64), .B(n57), .Y(n55) );
  OAI21XL U149 ( .A0(n208), .A1(A[2]), .B0(n194), .Y(n190) );
  OAI21X1 U150 ( .A0(n189), .A1(n190), .B0(n191), .Y(n185) );
  INVXL U151 ( .A(B[1]), .Y(n205) );
  OAI21X1 U153 ( .A0(n45), .A1(n39), .B0(n40), .Y(n38) );
  NOR2X1 U155 ( .A(n224), .B(B[7]), .Y(n214) );
  OAI21XL U156 ( .A0(n207), .A1(A[4]), .B0(n188), .Y(n187) );
  NOR2X1 U157 ( .A(n209), .B(A[3]), .Y(n95) );
  OAI21XL U158 ( .A0(n31), .A1(n25), .B0(n26), .Y(n24) );
  NOR2BX1 U159 ( .AN(n212), .B(n187), .Y(n186) );
  INVX1 U163 ( .A(A[9]), .Y(n221) );
  CLKINVX1 U165 ( .A(A[10]), .Y(n223) );
  INVX1 U166 ( .A(A[12]), .Y(n220) );
  INVX1 U167 ( .A(A[11]), .Y(n218) );
  INVX1 U168 ( .A(n57), .Y(n222) );
  INVX1 U169 ( .A(A[15]), .Y(n228) );
  INVX1 U171 ( .A(A[14]), .Y(n219) );
  INVX1 U172 ( .A(A[8]), .Y(n226) );
  CLKINVX1 U173 ( .A(B[5]), .Y(n210) );
  INVX1 U178 ( .A(A[16]), .Y(n227) );
  INVX1 U179 ( .A(n44), .Y(n203) );
  INVX3 U180 ( .A(B[3]), .Y(n209) );
  CLKINVX1 U181 ( .A(B[4]), .Y(n207) );
  CLKINVX1 U182 ( .A(B[6]), .Y(n206) );
  CLKINVX1 U183 ( .A(B[2]), .Y(n208) );
  INVX1 U184 ( .A(n65), .Y(n204) );
  INVX1 U185 ( .A(n70), .Y(n199) );
  INVX1 U186 ( .A(n76), .Y(n200) );
  INVX1 U188 ( .A(n75), .Y(n225) );
  INVX1 U189 ( .A(n39), .Y(n201) );
  INVX1 U190 ( .A(n45), .Y(n202) );
  INVX1 U194 ( .A(n25), .Y(n196) );
  INVX1 U198 ( .A(n31), .Y(n197) );
  INVX1 U202 ( .A(n35), .Y(n216) );
  INVX1 U215 ( .A(n30), .Y(n198) );
  INVX1 U218 ( .A(A[13]), .Y(n217) );
  OAI2BB1X4 U219 ( .A0N(n185), .A1N(n186), .B0(n211), .Y(n215) );
  OAI22X1 U220 ( .A0(n212), .A1(n213), .B0(n87), .B1(n213), .Y(n211) );
  OAI2BB2X1 U227 ( .B0(n214), .B1(n85), .A0N(n224), .A1N(B[7]), .Y(n213) );
  INVX1 U229 ( .A(n88), .Y(n188) );
  INVX1 U230 ( .A(A[7]), .Y(n224) );
  AOI22X1 U231 ( .A0(n208), .A1(n192), .B0(n209), .B1(A[3]), .Y(n191) );
  NOR2X1 U233 ( .A(n95), .B(n193), .Y(n192) );
  INVX1 U234 ( .A(A[2]), .Y(n193) );
  INVX1 U235 ( .A(n95), .Y(n194) );
  ACHCONX2 U236 ( .A(A[1]), .B(n195), .CI(n205), .CON(n189) );
endmodule


module MBF_DW01_add_18 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n24, n25, n27, n28, n36,
         n37, n38, n39, n45, n46, n49, n50, n55, n56, n58, n59, n63, n64, n65,
         n66, n67, n70, n71, n82, n83, n84, n85, n86, n90, n91, n92, n93, n95,
         \A[0] , \A[1] , net22514, net22618, net22985, net25527, n69, n61, n76,
         n167, n173, n176, n177, n179, n182, n183, n184, n57, n6, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];

  NOR2X1 U224 ( .A(n211), .B(A[15]), .Y(n24) );
  XNOR2X1 U211 ( .A(n12), .B(n173), .Y(SUM[6]) );
  NOR2X4 U182 ( .A(B[8]), .B(A[8]), .Y(n70) );
  NAND2X2 U203 ( .A(B[5]), .B(A[5]), .Y(n85) );
  NAND2X1 U138 ( .A(n215), .B(n64), .Y(n8) );
  AND2X2 U231 ( .A(n182), .B(n183), .Y(n179) );
  NAND2X1 U204 ( .A(n49), .B(n179), .Y(n27) );
  NAND2X1 U190 ( .A(n211), .B(A[12]), .Y(n56) );
  NAND2X1 U236 ( .A(n211), .B(A[13]), .Y(n45) );
  NAND2X1 U223 ( .A(n211), .B(A[14]), .Y(n36) );
  NAND2X1 U225 ( .A(n211), .B(A[15]), .Y(n25) );
  NAND2X1 U219 ( .A(n49), .B(n182), .Y(n38) );
  AOI21X1 U198 ( .A0(n50), .A1(n182), .B0(n222), .Y(n39) );
  NAND2X1 U228 ( .A(n183), .B(n36), .Y(n4) );
  NAND2X1 U217 ( .A(n182), .B(n45), .Y(n5) );
  NAND2X1 U230 ( .A(n219), .B(n59), .Y(n7) );
  NAND2X1 U232 ( .A(n216), .B(n67), .Y(n9) );
  XOR2X1 U185 ( .A(n10), .B(n207), .Y(SUM[8]) );
  XOR2X1 U240 ( .A(n13), .B(n86), .Y(SUM[5]) );
  XNOR2X1 U210 ( .A(n14), .B(n91), .Y(SUM[4]) );
  NAND2X2 U159 ( .A(B[9]), .B(A[9]), .Y(n67) );
  NOR2X2 U172 ( .A(n58), .B(n55), .Y(n49) );
  OA21X4 U165 ( .A0(n70), .A1(n207), .B0(n71), .Y(n167) );
  OR2X4 U130 ( .A(n86), .B(n84), .Y(n176) );
  NAND2X1 U216 ( .A(n217), .B(n71), .Y(n10) );
  NAND2X2 U141 ( .A(n176), .B(n85), .Y(n83) );
  OAI2BB1X4 U140 ( .A0N(net22618), .A1N(n83), .B0(n82), .Y(net22985) );
  NAND2X1 U186 ( .A(n211), .B(A[11]), .Y(n59) );
  NAND2X2 U153 ( .A(B[4]), .B(A[4]), .Y(n90) );
  AOI21X4 U209 ( .A0(n184), .A1(n91), .B0(n218), .Y(n86) );
  OR2X1 U151 ( .A(n211), .B(A[14]), .Y(n183) );
  NAND2XL U175 ( .A(net22514), .B(n76), .Y(n11) );
  NOR2X1 U173 ( .A(n211), .B(A[11]), .Y(n58) );
  NAND2X1 U187 ( .A(n189), .B(n56), .Y(n6) );
  NOR2X2 U129 ( .A(B[10]), .B(A[10]), .Y(n63) );
  NAND2X1 U131 ( .A(B[10]), .B(A[10]), .Y(n64) );
  NAND2X2 U132 ( .A(B[8]), .B(A[8]), .Y(n71) );
  NAND2BX1 U133 ( .AN(n92), .B(n93), .Y(n186) );
  AOI2BB2X1 U134 ( .B0(n95), .B1(n186), .A0N(n95), .A1N(n186), .Y(SUM[3]) );
  OA21XL U135 ( .A0(B[2]), .A1(A[2]), .B0(n95), .Y(SUM[2]) );
  NOR2X4 U136 ( .A(n66), .B(n63), .Y(n61) );
  NOR2X2 U137 ( .A(n211), .B(A[12]), .Y(n55) );
  NAND2XL U139 ( .A(net22618), .B(n82), .Y(n12) );
  OR2X4 U142 ( .A(B[4]), .B(A[4]), .Y(n184) );
  XOR2X4 U143 ( .A(n205), .B(n206), .Y(SUM[15]) );
  CLKAND2X3 U144 ( .A(n209), .B(n204), .Y(n192) );
  INVX6 U145 ( .A(n191), .Y(n209) );
  NAND2X8 U146 ( .A(net22514), .B(net22985), .Y(net25527) );
  OAI21X4 U147 ( .A0(n208), .A1(n38), .B0(n39), .Y(n37) );
  XNOR2X4 U148 ( .A(n46), .B(n5), .Y(SUM[13]) );
  OAI21X4 U149 ( .A0(n209), .A1(n220), .B0(n221), .Y(n46) );
  OAI2BB1X1 U150 ( .A0N(n222), .A1N(n183), .B0(n36), .Y(n187) );
  OR2X1 U152 ( .A(B[7]), .B(A[7]), .Y(net22514) );
  XNOR2X2 U154 ( .A(n65), .B(n8), .Y(SUM[10]) );
  XOR2X1 U155 ( .A(n9), .B(n167), .Y(SUM[9]) );
  XNOR2X2 U156 ( .A(n57), .B(n6), .Y(SUM[12]) );
  XNOR2X1 U157 ( .A(n37), .B(n4), .Y(SUM[14]) );
  NOR3X4 U158 ( .A(n192), .B(n193), .C(n194), .Y(SUM[16]) );
  NOR2X2 U160 ( .A(n209), .B(n202), .Y(n193) );
  NAND2XL U161 ( .A(n184), .B(n90), .Y(n14) );
  NAND2X2 U162 ( .A(B[2]), .B(A[2]), .Y(n95) );
  OAI21X4 U163 ( .A0(n167), .A1(n66), .B0(n67), .Y(n65) );
  OAI21X2 U164 ( .A0(n55), .A1(n59), .B0(n56), .Y(n50) );
  OAI21X2 U166 ( .A0(n28), .A1(n24), .B0(n25), .Y(n198) );
  AOI21X2 U167 ( .A0(n50), .A1(n179), .B0(n187), .Y(n28) );
  CLKINVX1 U168 ( .A(n210), .Y(n190) );
  NOR2X2 U169 ( .A(B[9]), .B(A[9]), .Y(n66) );
  XOR2X1 U170 ( .A(n211), .B(A[16]), .Y(n201) );
  NAND2X2 U171 ( .A(B[3]), .B(A[3]), .Y(n93) );
  NOR2X2 U174 ( .A(B[3]), .B(A[3]), .Y(n92) );
  NAND2X1 U176 ( .A(B[7]), .B(A[7]), .Y(n76) );
  OR2X2 U177 ( .A(B[6]), .B(A[6]), .Y(net22618) );
  NAND2X1 U178 ( .A(B[6]), .B(A[6]), .Y(n82) );
  OR2X1 U179 ( .A(n211), .B(A[13]), .Y(n182) );
  CLKINVX1 U180 ( .A(n198), .Y(n197) );
  CLKINVX1 U181 ( .A(n201), .Y(n195) );
  NAND2X2 U183 ( .A(n200), .B(n201), .Y(n202) );
  NOR2X1 U184 ( .A(n198), .B(n201), .Y(n204) );
  NOR2BX1 U188 ( .AN(n25), .B(n24), .Y(n206) );
  OAI21X4 U189 ( .A0(net25527), .A1(n70), .B0(n188), .Y(n69) );
  OA21X4 U191 ( .A0(n70), .A1(n76), .B0(n71), .Y(n188) );
  AOI21X4 U192 ( .A0(n69), .A1(n61), .B0(n210), .Y(n208) );
  INVX1 U193 ( .A(n55), .Y(n189) );
  OAI21X2 U194 ( .A0(n208), .A1(n58), .B0(n59), .Y(n57) );
  OAI2BB1X4 U195 ( .A0N(n69), .A1N(n61), .B0(n190), .Y(n191) );
  MXI2X4 U196 ( .A(n195), .B(n196), .S0(n197), .Y(n194) );
  NAND2X4 U197 ( .A(n199), .B(n195), .Y(n196) );
  CLKINVX6 U199 ( .A(n200), .Y(n199) );
  NOR2BX4 U200 ( .AN(n203), .B(n27), .Y(n200) );
  CLKINVX6 U201 ( .A(n24), .Y(n203) );
  OAI21X4 U202 ( .A0(n209), .A1(n27), .B0(n28), .Y(n205) );
  NOR2X6 U205 ( .A(B[5]), .B(A[5]), .Y(n84) );
  CLKINVX4 U206 ( .A(n90), .Y(n218) );
  NOR2X2 U207 ( .A(n92), .B(n95), .Y(n177) );
  OR2X8 U208 ( .A(n177), .B(n213), .Y(n91) );
  BUFX8 U212 ( .A(B[11]), .Y(n211) );
  CLKINVX1 U213 ( .A(n93), .Y(n213) );
  CLKINVX1 U214 ( .A(n66), .Y(n216) );
  OAI21X4 U215 ( .A0(n67), .A1(n63), .B0(n64), .Y(n210) );
  AND2X4 U218 ( .A(net25527), .B(n76), .Y(n207) );
  CLKINVX1 U220 ( .A(n45), .Y(n222) );
  NAND2X1 U221 ( .A(n214), .B(n85), .Y(n13) );
  INVX1 U222 ( .A(n84), .Y(n214) );
  NAND2X1 U226 ( .A(n176), .B(n85), .Y(n173) );
  XNOR2X1 U227 ( .A(n11), .B(net22985), .Y(SUM[7]) );
  CLKINVX1 U229 ( .A(n70), .Y(n217) );
  XOR2X1 U233 ( .A(n208), .B(n7), .Y(SUM[11]) );
  INVX1 U234 ( .A(n58), .Y(n219) );
  INVX1 U235 ( .A(n50), .Y(n221) );
  INVX1 U237 ( .A(n49), .Y(n220) );
  INVX1 U238 ( .A(n63), .Y(n215) );
endmodule


module MBF_DW01_add_17 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n5, n6, n7, n8, n10, n11, n12, n13, n14, n15, n24, n25, n27, n28, n36,
         n37, n38, n39, n45, n46, n49, n50, n55, n56, n57, n58, n59, n63, n64,
         n65, n66, n67, n70, n71, n72, n76, n83, n84, n85, n86, n90, n91, n92,
         n93, n95, \A[0] , \A[1] , n164, n167, n168, n171, n172, n173, n174,
         n177, n178, n19, n2, n170, n169, n175, n18, n165, n26, n3, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];

  NAND2X1 U170 ( .A(B[3]), .B(A[3]), .Y(n93) );
  XOR2X1 U207 ( .A(n192), .B(n7), .Y(SUM[11]) );
  XOR2X1 U218 ( .A(n13), .B(n183), .Y(SUM[5]) );
  AND2X2 U141 ( .A(n171), .B(n172), .Y(n168) );
  NAND2X1 U172 ( .A(n193), .B(A[12]), .Y(n56) );
  NAND2X1 U202 ( .A(n193), .B(A[14]), .Y(n36) );
  NOR2X1 U203 ( .A(n193), .B(A[15]), .Y(n24) );
  NAND2X1 U204 ( .A(n193), .B(A[15]), .Y(n25) );
  NAND2X1 U217 ( .A(n201), .B(n56), .Y(n6) );
  NAND2X1 U191 ( .A(n49), .B(n171), .Y(n38) );
  AOI21X1 U178 ( .A0(n50), .A1(n171), .B0(n203), .Y(n39) );
  NAND2X1 U192 ( .A(n171), .B(n45), .Y(n5) );
  NAND2X1 U208 ( .A(n199), .B(n59), .Y(n7) );
  NAND2X1 U214 ( .A(n196), .B(n64), .Y(n8) );
  NAND2X1 U193 ( .A(n197), .B(n71), .Y(n10) );
  NAND2X1 U196 ( .A(n173), .B(n76), .Y(n11) );
  XNOR2X1 U195 ( .A(n11), .B(n167), .Y(SUM[7]) );
  XNOR2X1 U210 ( .A(n12), .B(n83), .Y(SUM[6]) );
  NAND2X1 U199 ( .A(n174), .B(n90), .Y(n14) );
  XOR2X1 U228 ( .A(n15), .B(n95), .Y(SUM[3]) );
  AO21X4 U188 ( .A0(n177), .A1(n83), .B0(n178), .Y(n167) );
  OAI21X4 U180 ( .A0(n86), .A1(n84), .B0(n85), .Y(n83) );
  OR2X1 U144 ( .A(n193), .B(A[14]), .Y(n172) );
  XNOR2X2 U183 ( .A(n57), .B(n6), .Y(SUM[12]) );
  OAI21X2 U171 ( .A0(n192), .A1(n200), .B0(n202), .Y(n46) );
  AOI21X4 U181 ( .A0(n174), .A1(n91), .B0(n198), .Y(n86) );
  OAI21X2 U169 ( .A0(n92), .A1(n95), .B0(n93), .Y(n91) );
  NOR2X1 U145 ( .A(n58), .B(n55), .Y(n49) );
  AND2X1 U152 ( .A(n172), .B(n36), .Y(n164) );
  NOR2X1 U139 ( .A(n193), .B(A[11]), .Y(n58) );
  NAND2X1 U224 ( .A(n175), .B(n18), .Y(n2) );
  OR2X1 U129 ( .A(n27), .B(n24), .Y(n170) );
  OR2X1 U205 ( .A(n193), .B(A[16]), .Y(n175) );
  NAND2X1 U201 ( .A(n193), .B(A[16]), .Y(n18) );
  OAI2BB1X1 U194 ( .A0N(n172), .A1N(n203), .B0(n36), .Y(n165) );
  OAI21X1 U179 ( .A0(n55), .A1(n59), .B0(n56), .Y(n50) );
  NAND2X1 U215 ( .A(n190), .B(n25), .Y(n3) );
  XNOR2X4 U155 ( .A(n65), .B(n8), .Y(SUM[10]) );
  OAI21X4 U163 ( .A0(n191), .A1(n66), .B0(n67), .Y(n65) );
  AND2X2 U130 ( .A(B[6]), .B(A[6]), .Y(n178) );
  XOR2X2 U131 ( .A(n37), .B(n164), .Y(SUM[14]) );
  XNOR2X2 U132 ( .A(n26), .B(n3), .Y(SUM[15]) );
  OAI21X2 U133 ( .A0(n192), .A1(n170), .B0(n169), .Y(n19) );
  CLKINVX1 U134 ( .A(n76), .Y(n180) );
  AOI21X4 U135 ( .A0(n167), .A1(n173), .B0(n180), .Y(n72) );
  OA21XL U136 ( .A0(B[2]), .A1(A[2]), .B0(n95), .Y(SUM[2]) );
  NAND2BX1 U137 ( .AN(n66), .B(n67), .Y(n181) );
  AOI2BB2X1 U138 ( .B0(n191), .B1(n181), .A0N(n191), .A1N(n181), .Y(SUM[9]) );
  XNOR2X2 U140 ( .A(n46), .B(n5), .Y(SUM[13]) );
  NAND2XL U142 ( .A(n177), .B(n194), .Y(n12) );
  AOI21X2 U143 ( .A0(n50), .A1(n168), .B0(n165), .Y(n28) );
  NOR2X4 U146 ( .A(B[10]), .B(A[10]), .Y(n63) );
  OAI21X2 U147 ( .A0(n192), .A1(n38), .B0(n39), .Y(n37) );
  NOR2X6 U148 ( .A(B[8]), .B(A[8]), .Y(n70) );
  OAI21X2 U149 ( .A0(n192), .A1(n27), .B0(n28), .Y(n26) );
  INVX8 U150 ( .A(n189), .Y(n192) );
  NOR2X1 U151 ( .A(n193), .B(A[12]), .Y(n55) );
  NAND2X1 U153 ( .A(n193), .B(A[11]), .Y(n59) );
  OR2X1 U154 ( .A(n193), .B(A[13]), .Y(n171) );
  NOR2X4 U156 ( .A(n63), .B(n66), .Y(n186) );
  NOR2X1 U157 ( .A(B[3]), .B(A[3]), .Y(n92) );
  OR2X1 U158 ( .A(B[7]), .B(A[7]), .Y(n173) );
  CLKINVX1 U159 ( .A(n70), .Y(n197) );
  NAND2X1 U160 ( .A(B[10]), .B(A[10]), .Y(n64) );
  INVXL U161 ( .A(n84), .Y(n195) );
  CLKINVX2 U162 ( .A(n90), .Y(n198) );
  INVXL U164 ( .A(n86), .Y(n182) );
  CLKINVX1 U165 ( .A(n182), .Y(n183) );
  OAI21X2 U166 ( .A0(n192), .A1(n58), .B0(n59), .Y(n57) );
  XNOR2X1 U167 ( .A(n19), .B(n2), .Y(SUM[16]) );
  OA21X2 U168 ( .A0(n28), .A1(n24), .B0(n25), .Y(n169) );
  OR2X2 U173 ( .A(B[4]), .B(A[4]), .Y(n174) );
  OR2X2 U174 ( .A(B[6]), .B(A[6]), .Y(n177) );
  NAND2X1 U175 ( .A(B[7]), .B(A[7]), .Y(n76) );
  CLKINVX1 U176 ( .A(n71), .Y(n187) );
  NAND2X2 U177 ( .A(B[8]), .B(A[8]), .Y(n71) );
  NAND2X1 U182 ( .A(n193), .B(A[13]), .Y(n45) );
  NAND2X4 U184 ( .A(n49), .B(n168), .Y(n27) );
  AOI21X4 U185 ( .A0(n186), .A1(n187), .B0(n188), .Y(n185) );
  OAI21X4 U186 ( .A0(n67), .A1(n63), .B0(n64), .Y(n188) );
  NAND2X4 U187 ( .A(n186), .B(n197), .Y(n184) );
  OAI21X4 U189 ( .A0(n184), .A1(n72), .B0(n185), .Y(n189) );
  INVX1 U190 ( .A(n24), .Y(n190) );
  XNOR2XL U197 ( .A(n14), .B(n91), .Y(SUM[4]) );
  NAND2BXL U198 ( .AN(n92), .B(n93), .Y(n15) );
  NAND2X2 U200 ( .A(B[9]), .B(A[9]), .Y(n67) );
  NAND2X2 U206 ( .A(B[4]), .B(A[4]), .Y(n90) );
  BUFX8 U209 ( .A(B[11]), .Y(n193) );
  NAND2X2 U211 ( .A(B[5]), .B(A[5]), .Y(n85) );
  CLKINVX1 U212 ( .A(n45), .Y(n203) );
  NAND2X1 U213 ( .A(B[2]), .B(A[2]), .Y(n95) );
  NOR2X2 U216 ( .A(B[5]), .B(A[5]), .Y(n84) );
  NOR2X4 U219 ( .A(B[9]), .B(A[9]), .Y(n66) );
  OA21X4 U220 ( .A0(n70), .A1(n72), .B0(n71), .Y(n191) );
  INVX1 U221 ( .A(n178), .Y(n194) );
  NAND2X1 U222 ( .A(n195), .B(n85), .Y(n13) );
  XOR2X1 U223 ( .A(n10), .B(n72), .Y(SUM[8]) );
  INVX1 U225 ( .A(n63), .Y(n196) );
  INVX1 U226 ( .A(n58), .Y(n199) );
  INVX1 U227 ( .A(n50), .Y(n202) );
  INVX1 U229 ( .A(n49), .Y(n200) );
  INVX1 U230 ( .A(n55), .Y(n201) );
endmodule


module MBF_DW01_add_19 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n7, n10, n11, n12, n13, n15, n24, n25, n27, n28, n36, n38, n39, n45,
         n49, n50, n55, n56, n57, n58, n59, n63, n64, n66, n67, n70, n71, n72,
         n76, n82, n83, n84, n85, n86, n90, n91, n92, n93, n95, \A[0] , \A[1] ,
         n163, n164, n167, n169, n171, n174, n176, n177, n180, n181, n182,
         n183, n187, n188, n190, n26, n186, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];

  NAND2X1 U168 ( .A(B[3]), .B(A[3]), .Y(n93) );
  XOR2X1 U229 ( .A(n13), .B(n86), .Y(SUM[5]) );
  NAND2X2 U167 ( .A(B[9]), .B(A[9]), .Y(n67) );
  NAND2X1 U133 ( .A(n214), .B(A[12]), .Y(n56) );
  NAND2X1 U222 ( .A(n214), .B(A[13]), .Y(n45) );
  NAND2X1 U153 ( .A(n180), .B(n45), .Y(n164) );
  AND2X2 U150 ( .A(n180), .B(n181), .Y(n176) );
  NAND2X1 U202 ( .A(n214), .B(A[14]), .Y(n36) );
  OAI2BB1X1 U151 ( .A0N(n181), .A1N(n226), .B0(n36), .Y(n171) );
  NAND2X1 U205 ( .A(n214), .B(A[15]), .Y(n25) );
  AND2X2 U211 ( .A(n219), .B(n64), .Y(n174) );
  XOR2X1 U158 ( .A(n169), .B(n174), .Y(SUM[10]) );
  NAND2X1 U193 ( .A(n49), .B(n180), .Y(n38) );
  AOI21X1 U132 ( .A0(n50), .A1(n180), .B0(n226), .Y(n39) );
  NAND2X1 U212 ( .A(n225), .B(n59), .Y(n7) );
  NAND2BX1 U196 ( .AN(n70), .B(n71), .Y(n10) );
  NAND2X1 U208 ( .A(n182), .B(n196), .Y(n11) );
  XNOR2X1 U227 ( .A(n11), .B(n177), .Y(SUM[7]) );
  NAND2X1 U174 ( .A(n183), .B(n82), .Y(n12) );
  XOR2X1 U207 ( .A(n12), .B(n217), .Y(SUM[6]) );
  NAND2X1 U169 ( .A(n218), .B(n93), .Y(n15) );
  XOR2X1 U218 ( .A(n15), .B(n95), .Y(SUM[3]) );
  NOR2X4 U173 ( .A(B[10]), .B(A[10]), .Y(n63) );
  NOR2X2 U136 ( .A(n58), .B(n55), .Y(n49) );
  OA21X4 U145 ( .A0(n215), .A1(n224), .B0(n222), .Y(n163) );
  AOI21X4 U191 ( .A0(n177), .A1(n182), .B0(n220), .Y(n72) );
  NOR2X4 U231 ( .A(B[8]), .B(A[8]), .Y(n70) );
  NOR2X1 U204 ( .A(n214), .B(A[15]), .Y(n24) );
  OR2X4 U147 ( .A(B[6]), .B(A[6]), .Y(n183) );
  OAI21X2 U131 ( .A0(n215), .A1(n58), .B0(n59), .Y(n57) );
  NAND2X2 U161 ( .A(B[5]), .B(A[5]), .Y(n85) );
  OAI2BB1X4 U216 ( .A0N(n183), .A1N(n83), .B0(n82), .Y(n177) );
  NOR2X2 U189 ( .A(n214), .B(A[12]), .Y(n55) );
  OAI21X4 U192 ( .A0(n86), .A1(n84), .B0(n85), .Y(n83) );
  NAND2X1 U220 ( .A(n214), .B(A[11]), .Y(n59) );
  OAI21X2 U177 ( .A0(n92), .A1(n95), .B0(n93), .Y(n91) );
  AOI21X4 U108 ( .A0(n91), .A1(n190), .B0(n221), .Y(n86) );
  OR2X2 U221 ( .A(n214), .B(A[13]), .Y(n180) );
  OAI21X2 U186 ( .A0(n167), .A1(n66), .B0(n67), .Y(n169) );
  AND2X1 U215 ( .A(n223), .B(n56), .Y(n187) );
  OR2X1 U181 ( .A(n214), .B(A[14]), .Y(n181) );
  AND2X1 U180 ( .A(n181), .B(n36), .Y(n188) );
  OAI21X2 U156 ( .A0(n215), .A1(n27), .B0(n28), .Y(n26) );
  AND2X2 U213 ( .A(n212), .B(n25), .Y(n186) );
  XOR2X4 U141 ( .A(n163), .B(n164), .Y(SUM[13]) );
  NAND2X1 U129 ( .A(n90), .B(n190), .Y(n192) );
  XNOR2X1 U130 ( .A(n192), .B(n91), .Y(SUM[4]) );
  NAND2BX1 U134 ( .AN(n66), .B(n67), .Y(n193) );
  AOI2BB2X1 U135 ( .B0(n167), .B1(n193), .A0N(n167), .A1N(n193), .Y(SUM[9]) );
  OA21XL U137 ( .A0(B[2]), .A1(A[2]), .B0(n95), .Y(SUM[2]) );
  NOR2X4 U138 ( .A(n215), .B(n211), .Y(n203) );
  NAND2X2 U139 ( .A(B[10]), .B(A[10]), .Y(n64) );
  NAND2X2 U140 ( .A(B[6]), .B(A[6]), .Y(n82) );
  OAI21X2 U142 ( .A0(n55), .A1(n59), .B0(n56), .Y(n50) );
  NOR2X1 U143 ( .A(n214), .B(A[11]), .Y(n58) );
  NOR2X1 U144 ( .A(B[3]), .B(A[3]), .Y(n92) );
  OR2X2 U146 ( .A(B[4]), .B(A[4]), .Y(n190) );
  NAND2X2 U148 ( .A(B[8]), .B(A[8]), .Y(n71) );
  OA21X2 U149 ( .A0(n28), .A1(n24), .B0(n25), .Y(n207) );
  CLKINVX1 U152 ( .A(n207), .Y(n213) );
  XOR2X1 U154 ( .A(n215), .B(n7), .Y(SUM[11]) );
  XOR2X2 U155 ( .A(n57), .B(n187), .Y(SUM[12]) );
  XOR2X2 U157 ( .A(n26), .B(n186), .Y(SUM[15]) );
  XOR2X4 U159 ( .A(n195), .B(n194), .Y(SUM[14]) );
  CLKINVX20 U160 ( .A(n188), .Y(n194) );
  OA21X4 U162 ( .A0(n215), .A1(n38), .B0(n39), .Y(n195) );
  AOI21X2 U163 ( .A0(n50), .A1(n176), .B0(n171), .Y(n28) );
  CLKINVX1 U164 ( .A(n220), .Y(n196) );
  NAND2X2 U165 ( .A(n49), .B(n176), .Y(n27) );
  NAND2BX2 U166 ( .AN(n63), .B(n201), .Y(n197) );
  NOR2X4 U170 ( .A(n199), .B(n200), .Y(n198) );
  NOR2X4 U171 ( .A(n66), .B(n70), .Y(n201) );
  NOR2BX1 U172 ( .AN(n212), .B(n27), .Y(n209) );
  NAND2X1 U175 ( .A(B[7]), .B(A[7]), .Y(n76) );
  OR2X2 U176 ( .A(B[7]), .B(A[7]), .Y(n182) );
  NAND2X1 U178 ( .A(n209), .B(n210), .Y(n211) );
  NAND2X1 U179 ( .A(n208), .B(n205), .Y(n206) );
  CLKINVX1 U182 ( .A(n209), .Y(n208) );
  CLKINVX1 U183 ( .A(n210), .Y(n205) );
  XOR2X1 U184 ( .A(n214), .B(A[16]), .Y(n210) );
  NAND2X1 U185 ( .A(B[2]), .B(A[2]), .Y(n95) );
  CLKINVX1 U187 ( .A(n24), .Y(n212) );
  OA21X4 U188 ( .A0(n72), .A1(n197), .B0(n198), .Y(n215) );
  NOR3X6 U190 ( .A(n63), .B(n66), .C(n71), .Y(n200) );
  OAI21X4 U194 ( .A0(n67), .A1(n63), .B0(n64), .Y(n199) );
  AOI211X2 U195 ( .A0(n202), .A1(n215), .B0(n204), .C0(n203), .Y(SUM[16]) );
  MXI2X4 U197 ( .A(n205), .B(n206), .S0(n207), .Y(n204) );
  NOR2X6 U198 ( .A(n213), .B(n210), .Y(n202) );
  BUFX8 U199 ( .A(B[11]), .Y(n214) );
  INVX3 U200 ( .A(n90), .Y(n221) );
  NAND2X2 U201 ( .A(B[4]), .B(A[4]), .Y(n90) );
  INVX1 U203 ( .A(n63), .Y(n219) );
  NOR2X2 U206 ( .A(B[5]), .B(A[5]), .Y(n84) );
  INVX3 U209 ( .A(n76), .Y(n220) );
  CLKINVX1 U210 ( .A(n45), .Y(n226) );
  OA21X4 U214 ( .A0(n70), .A1(n72), .B0(n71), .Y(n167) );
  NOR2X4 U217 ( .A(B[9]), .B(A[9]), .Y(n66) );
  INVX1 U219 ( .A(n92), .Y(n218) );
  INVX1 U223 ( .A(n83), .Y(n217) );
  NAND2BX1 U224 ( .AN(n84), .B(n85), .Y(n13) );
  XOR2X1 U225 ( .A(n10), .B(n72), .Y(SUM[8]) );
  INVX1 U226 ( .A(n58), .Y(n225) );
  INVX1 U228 ( .A(n55), .Y(n223) );
  INVX1 U230 ( .A(n50), .Y(n222) );
  INVX1 U232 ( .A(n49), .Y(n224) );
endmodule


module MBF_DW01_sub_23 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n21, n24, n25, n26, n31, n32, n33, n34, n35, n36, n37, n38, n41,
         n45, n46, n47, n48, n49, n50, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n65, n69, n70, n71, n72, n73, n74, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n89, n93, n94, n95, n96, n97, n98, n99, n100,
         n105, n106, n107, n112, n117, n118, n119, n120, n121, n123, n125,
         n126, n127, n128, n129, n131, n132, n133, n134, \A[0] , \A[1] , n217,
         n218, n221, n222, n223, n225, n226, n227, n230, n231, n232, n233,
         n234, n235, n236, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274;
  assign DIFF[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign DIFF[1] = \A[1] ;
  assign \A[1]  = A[1];

  OAI21XL U322 ( .A0(n4), .A1(n86), .B0(n89), .Y(n85) );
  NOR2X1 U323 ( .A(n125), .B(n128), .Y(n123) );
  OR2X1 U341 ( .A(A[16]), .B(n254), .Y(n236) );
  NAND2X1 U267 ( .A(n252), .B(A[5]), .Y(n126) );
  NAND2X1 U309 ( .A(n262), .B(n49), .Y(n47) );
  NAND2X1 U340 ( .A(n253), .B(A[7]), .Y(n118) );
  NAND2X1 U334 ( .A(A[10]), .B(n254), .Y(n93) );
  NAND2X1 U335 ( .A(A[12]), .B(n254), .Y(n69) );
  NAND2X1 U332 ( .A(A[13]), .B(n254), .Y(n56) );
  NAND2X1 U331 ( .A(A[14]), .B(n254), .Y(n45) );
  NAND2X1 U271 ( .A(n235), .B(n45), .Y(n8) );
  NAND2X1 U192 ( .A(n46), .B(n8), .Y(n217) );
  NAND2X1 U339 ( .A(A[15]), .B(n254), .Y(n32) );
  NAND2X1 U329 ( .A(A[16]), .B(n254), .Y(n21) );
  NAND2X1 U328 ( .A(n236), .B(n21), .Y(n6) );
  NAND2X1 U301 ( .A(n262), .B(n36), .Y(n34) );
  NAND2X1 U270 ( .A(n274), .B(n32), .Y(n7) );
  NAND2X1 U242 ( .A(n262), .B(n84), .Y(n82) );
  AOI21X1 U225 ( .A0(n225), .A1(n84), .B0(n85), .Y(n83) );
  OAI21X1 U243 ( .A0(n256), .A1(n82), .B0(n83), .Y(n81) );
  XNOR2X1 U226 ( .A(n81), .B(n11), .Y(DIFF[11]) );
  NAND2X1 U300 ( .A(n262), .B(n60), .Y(n58) );
  AOI21X1 U239 ( .A0(n225), .A1(n60), .B0(n61), .Y(n59) );
  OAI21X1 U219 ( .A0(n256), .A1(n58), .B0(n59), .Y(n57) );
  XNOR2X1 U319 ( .A(n57), .B(n9), .Y(DIFF[13]) );
  NAND2X1 U263 ( .A(n262), .B(n73), .Y(n71) );
  AOI21X1 U275 ( .A0(n225), .A1(n73), .B0(n74), .Y(n72) );
  OAI21X1 U274 ( .A0(n256), .A1(n71), .B0(n72), .Y(n70) );
  XNOR2X1 U307 ( .A(n70), .B(n10), .Y(DIFF[12]) );
  NAND2X1 U281 ( .A(n263), .B(n118), .Y(n15) );
  XNOR2X1 U316 ( .A(n119), .B(n15), .Y(DIFF[7]) );
  NAND2X1 U283 ( .A(n265), .B(n4), .Y(n14) );
  XNOR2X1 U304 ( .A(n112), .B(n14), .Y(DIFF[8]) );
  NAND2X1 U306 ( .A(n262), .B(n97), .Y(n95) );
  AOI21X1 U245 ( .A0(n225), .A1(n97), .B0(n98), .Y(n96) );
  OAI21X1 U218 ( .A0(n256), .A1(n95), .B0(n96), .Y(n94) );
  XNOR2X1 U305 ( .A(n94), .B(n12), .Y(DIFF[10]) );
  NAND2X1 U310 ( .A(n262), .B(n265), .Y(n106) );
  AOI21X1 U224 ( .A0(n225), .A1(n265), .B0(n264), .Y(n107) );
  NAND2X1 U284 ( .A(n269), .B(n100), .Y(n13) );
  XNOR2X1 U217 ( .A(n105), .B(n13), .Y(DIFF[9]) );
  NAND2X1 U324 ( .A(n261), .B(n121), .Y(n16) );
  NAND2X1 U313 ( .A(n259), .B(n126), .Y(n17) );
  XNOR2X1 U312 ( .A(n127), .B(n17), .Y(DIFF[5]) );
  NAND2X1 U326 ( .A(n258), .B(n129), .Y(n18) );
  XOR2X1 U290 ( .A(n255), .B(n18), .Y(DIFF[4]) );
  NAND2X1 U287 ( .A(n257), .B(n133), .Y(n19) );
  XOR2X1 U286 ( .A(n19), .B(n134), .Y(DIFF[3]) );
  OA21X2 U277 ( .A0(n125), .A1(n129), .B0(n126), .Y(n227) );
  OAI21X4 U261 ( .A0(n117), .A1(n121), .B0(n118), .Y(n225) );
  XOR2X1 U280 ( .A(n256), .B(n16), .Y(DIFF[6]) );
  NAND2X1 U333 ( .A(n247), .B(A[3]), .Y(n133) );
  NAND2X1 U257 ( .A(n251), .B(A[4]), .Y(n129) );
  OAI2BB1X4 U276 ( .A0N(n131), .A1N(n123), .B0(n227), .Y(n226) );
  NOR2X4 U249 ( .A(A[9]), .B(n254), .Y(n99) );
  NOR2X4 U241 ( .A(n5), .B(n231), .Y(n25) );
  OAI21X1 U232 ( .A0(n4), .A1(n267), .B0(n270), .Y(n74) );
  NOR2X1 U330 ( .A(n247), .B(A[3]), .Y(n132) );
  NOR2X4 U207 ( .A(n86), .B(n79), .Y(n77) );
  NAND2X4 U255 ( .A(n77), .B(n234), .Y(n62) );
  NAND2X2 U227 ( .A(n222), .B(n223), .Y(n26) );
  OAI21X2 U187 ( .A0(n256), .A1(n34), .B0(n35), .Y(n33) );
  NAND2X4 U209 ( .A(n269), .B(n233), .Y(n86) );
  OR2X4 U256 ( .A(n89), .B(n79), .Y(n230) );
  OA21X4 U250 ( .A0(n41), .A1(n31), .B0(n32), .Y(n223) );
  NOR2X2 U321 ( .A(n5), .B(n267), .Y(n73) );
  NOR2X1 U338 ( .A(n248), .B(A[2]), .Y(n134) );
  OA21X4 U272 ( .A0(n31), .A1(n100), .B0(n93), .Y(n89) );
  AOI21X4 U252 ( .A0(n78), .A1(n234), .B0(n273), .Y(n65) );
  OAI21X4 U251 ( .A0(n65), .A1(n55), .B0(n56), .Y(n54) );
  NAND2X2 U194 ( .A(n217), .B(n218), .Y(DIFF[14]) );
  AOI21X4 U246 ( .A0(n54), .A1(n235), .B0(n273), .Y(n41) );
  AOI21X2 U211 ( .A0(n225), .A1(n36), .B0(n37), .Y(n35) );
  NOR2X1 U262 ( .A(n251), .B(A[4]), .Y(n128) );
  NAND2X2 U291 ( .A(A[9]), .B(n254), .Y(n100) );
  OAI21X2 U234 ( .A0(n4), .A1(n38), .B0(n41), .Y(n37) );
  OAI21XL U314 ( .A0(n255), .A1(n128), .B0(n129), .Y(n127) );
  NAND2X1 U237 ( .A(n250), .B(A[6]), .Y(n121) );
  NAND2XL U308 ( .A(n234), .B(n69), .Y(n10) );
  NAND2XL U285 ( .A(n233), .B(n93), .Y(n12) );
  XNOR2XL U293 ( .A(n248), .B(A[2]), .Y(DIFF[2]) );
  CLKINVX1 U184 ( .A(n5), .Y(n265) );
  NOR2X2 U185 ( .A(n5), .B(n38), .Y(n36) );
  NOR2X1 U186 ( .A(n5), .B(n99), .Y(n97) );
  NOR2X1 U188 ( .A(n5), .B(n86), .Y(n84) );
  NOR2X1 U189 ( .A(n5), .B(n62), .Y(n60) );
  NOR2X2 U190 ( .A(n260), .B(n266), .Y(n221) );
  OAI21X1 U191 ( .A0(n256), .A1(n106), .B0(n107), .Y(n105) );
  NAND3BX1 U193 ( .AN(n256), .B(n262), .C(n25), .Y(n246) );
  NAND2BX4 U195 ( .AN(n46), .B(n272), .Y(n218) );
  OAI21X1 U196 ( .A0(n256), .A1(n232), .B0(n260), .Y(n112) );
  OAI21X1 U197 ( .A0(n4), .A1(n62), .B0(n65), .Y(n61) );
  OR2X2 U198 ( .A(A[12]), .B(n254), .Y(n234) );
  OR2X8 U199 ( .A(n38), .B(n31), .Y(n231) );
  NAND2X6 U200 ( .A(n53), .B(n235), .Y(n38) );
  NOR2X4 U201 ( .A(n5), .B(n268), .Y(n49) );
  NOR2X4 U202 ( .A(n249), .B(A[8]), .Y(n5) );
  NAND2X4 U203 ( .A(n249), .B(A[8]), .Y(n4) );
  NOR2X4 U204 ( .A(n62), .B(n55), .Y(n53) );
  CLKINVX1 U205 ( .A(B[6]), .Y(n250) );
  CLKINVX1 U206 ( .A(B[7]), .Y(n253) );
  OAI21XL U208 ( .A0(n4), .A1(n99), .B0(n100), .Y(n98) );
  NAND2XL U210 ( .A(n235), .B(n56), .Y(n9) );
  NAND2XL U212 ( .A(n235), .B(n80), .Y(n11) );
  XNOR2X2 U213 ( .A(n33), .B(n7), .Y(DIFF[15]) );
  NOR2X2 U214 ( .A(n253), .B(A[7]), .Y(n117) );
  INVX1 U215 ( .A(B[8]), .Y(n249) );
  OR2X1 U216 ( .A(n117), .B(n120), .Y(n232) );
  NOR2X2 U220 ( .A(A[15]), .B(n254), .Y(n31) );
  INVX3 U221 ( .A(n232), .Y(n262) );
  NOR2X1 U222 ( .A(n250), .B(A[6]), .Y(n120) );
  CLKINVX1 U223 ( .A(B[3]), .Y(n247) );
  OAI21X1 U228 ( .A0(n132), .A1(n134), .B0(n133), .Y(n131) );
  NOR2X1 U229 ( .A(n252), .B(A[5]), .Y(n125) );
  NAND2XL U230 ( .A(A[11]), .B(n254), .Y(n80) );
  NOR2X2 U231 ( .A(n221), .B(n26), .Y(n24) );
  OR2X2 U233 ( .A(n4), .B(n231), .Y(n222) );
  OAI21XL U235 ( .A0(n256), .A1(n120), .B0(n121), .Y(n119) );
  NOR2X1 U236 ( .A(A[11]), .B(n254), .Y(n79) );
  OR2X1 U238 ( .A(A[14]), .B(n254), .Y(n235) );
  INVX12 U240 ( .A(B[10]), .Y(n254) );
  OR2X2 U244 ( .A(A[10]), .B(n254), .Y(n233) );
  NOR2X1 U247 ( .A(A[13]), .B(n254), .Y(n55) );
  XNOR2X4 U248 ( .A(n245), .B(n6), .Y(DIFF[16]) );
  NAND2X4 U253 ( .A(n24), .B(n246), .Y(n245) );
  OAI21X4 U254 ( .A0(n256), .A1(n47), .B0(n48), .Y(n46) );
  AOI21X4 U258 ( .A0(n225), .A1(n49), .B0(n50), .Y(n48) );
  OAI21X4 U259 ( .A0(n4), .A1(n268), .B0(n271), .Y(n50) );
  CLKINVX1 U260 ( .A(B[5]), .Y(n252) );
  CLKINVX1 U264 ( .A(B[2]), .Y(n248) );
  INVX3 U265 ( .A(n25), .Y(n266) );
  CLKINVX1 U266 ( .A(n225), .Y(n260) );
  INVX3 U268 ( .A(n53), .Y(n268) );
  CLKINVX1 U269 ( .A(n54), .Y(n271) );
  NAND2X4 U273 ( .A(n230), .B(n80), .Y(n78) );
  CLKINVX1 U278 ( .A(B[4]), .Y(n251) );
  CLKINVX1 U279 ( .A(n45), .Y(n273) );
  CLKINVX1 U282 ( .A(n131), .Y(n255) );
  CLKINVX1 U288 ( .A(n77), .Y(n267) );
  INVX3 U289 ( .A(n99), .Y(n269) );
  INVX8 U292 ( .A(n226), .Y(n256) );
  INVX1 U294 ( .A(n132), .Y(n257) );
  INVX1 U295 ( .A(n128), .Y(n258) );
  INVX1 U296 ( .A(n125), .Y(n259) );
  INVX1 U297 ( .A(n120), .Y(n261) );
  INVX1 U298 ( .A(n4), .Y(n264) );
  INVX1 U299 ( .A(n117), .Y(n263) );
  INVX1 U302 ( .A(n78), .Y(n270) );
  INVX1 U303 ( .A(n31), .Y(n274) );
  INVX1 U311 ( .A(n8), .Y(n272) );
endmodule


module MBF_DW01_add_23 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n6, n7, n9, n10, n11, n12, n13, n17, n18, n23, n24, n25, n26, n27,
         n31, n32, n35, n36, n37, n38, n40, n41, n45, n46, n47, n49, n51, n52,
         n53, n58, n64, n65, n66, n67, n68, n73, n75, n77, \A[0] , \A[1] ,
         \A[2] , n146, n147, n149, n150, n154, n155, n156, n157, n158, n159,
         n161, n163, n164, n165, n166, n168, n39, n167, n152, n43, n153, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n181,
         n182, n183, n184, n185, n186, n187, n188, n189;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];

  OR2X1 U194 ( .A(n26), .B(n23), .Y(n155) );
  OR2X1 U176 ( .A(n177), .B(A[16]), .Y(n159) );
  NOR2X2 U119 ( .A(n177), .B(A[13]), .Y(n37) );
  NAND2X1 U172 ( .A(n177), .B(A[13]), .Y(n38) );
  NOR2X1 U126 ( .A(n40), .B(n37), .Y(n35) );
  NAND2X1 U192 ( .A(n35), .B(n156), .Y(n26) );
  OAI21X1 U128 ( .A0(n37), .A1(n41), .B0(n38), .Y(n36) );
  NAND2X1 U124 ( .A(n36), .B(n156), .Y(n150) );
  NAND2X1 U174 ( .A(n177), .B(A[14]), .Y(n31) );
  AND2X2 U123 ( .A(n150), .B(n31), .Y(n27) );
  NAND2X1 U175 ( .A(n177), .B(A[15]), .Y(n24) );
  AND2X2 U186 ( .A(n189), .B(n24), .Y(n166) );
  NAND2X1 U199 ( .A(n177), .B(A[16]), .Y(n17) );
  NAND2X1 U184 ( .A(n188), .B(n41), .Y(n6) );
  NAND2X1 U182 ( .A(n182), .B(n46), .Y(n7) );
  NAND2X1 U169 ( .A(n183), .B(n53), .Y(n9) );
  XOR2X1 U110 ( .A(n9), .B(n171), .Y(SUM[9]) );
  NAND2X1 U166 ( .A(n157), .B(n185), .Y(n13) );
  XNOR2X1 U170 ( .A(n13), .B(n146), .Y(SUM[5]) );
  OAI2BB1X4 U205 ( .A0N(n163), .A1N(n65), .B0(n64), .Y(n164) );
  NAND2X1 U167 ( .A(n177), .B(A[12]), .Y(n41) );
  OAI21X2 U144 ( .A0(n179), .A1(n155), .B0(n154), .Y(n18) );
  NOR2X4 U155 ( .A(n149), .B(n161), .Y(n68) );
  OAI21X4 U163 ( .A0(n68), .A1(n66), .B0(n67), .Y(n65) );
  NOR2X1 U173 ( .A(n177), .B(A[15]), .Y(n23) );
  OAI21XL U137 ( .A0(n181), .A1(n77), .B0(n75), .Y(n146) );
  NOR2X1 U140 ( .A(n177), .B(A[12]), .Y(n40) );
  OAI21X4 U121 ( .A0(n179), .A1(n26), .B0(n27), .Y(n25) );
  OAI21X4 U143 ( .A0(n179), .A1(n186), .B0(n187), .Y(n32) );
  AND2X1 U190 ( .A(n156), .B(n31), .Y(n168) );
  NAND2XL U154 ( .A(n158), .B(n58), .Y(n10) );
  OR2X1 U125 ( .A(n177), .B(A[14]), .Y(n156) );
  XOR2X2 U120 ( .A(n25), .B(n166), .Y(SUM[15]) );
  XOR2X2 U116 ( .A(n32), .B(n168), .Y(SUM[14]) );
  AND2X1 U198 ( .A(n159), .B(n17), .Y(n165) );
  OAI21X2 U158 ( .A0(n181), .A1(n77), .B0(n75), .Y(n73) );
  AND2X4 U146 ( .A(n157), .B(n73), .Y(n149) );
  OA21XL U156 ( .A0(n27), .A1(n23), .B0(n24), .Y(n154) );
  NAND2XL U132 ( .A(n163), .B(n64), .Y(n11) );
  OAI21X2 U149 ( .A0(n179), .A1(n40), .B0(n41), .Y(n39) );
  AND2X1 U188 ( .A(n174), .B(n38), .Y(n167) );
  OAI2BB1X4 U168 ( .A0N(n43), .A1N(n51), .B0(n153), .Y(n152) );
  NOR2X2 U193 ( .A(n176), .B(n45), .Y(n43) );
  OA21X4 U165 ( .A0(n49), .A1(n45), .B0(n46), .Y(n153) );
  XOR2X4 U117 ( .A(n39), .B(n167), .Y(SUM[13]) );
  XOR2X4 U113 ( .A(n18), .B(n165), .Y(SUM[16]) );
  OR2X2 U109 ( .A(B[10]), .B(A[10]), .Y(n175) );
  INVX3 U111 ( .A(n51), .Y(n178) );
  OA21XL U112 ( .A0(B[3]), .A1(A[3]), .B0(n77), .Y(SUM[3]) );
  NAND2X1 U114 ( .A(n175), .B(n49), .Y(n169) );
  AOI2BB2X1 U115 ( .B0(n178), .B1(n169), .A0N(n178), .A1N(n169), .Y(SUM[10])
         );
  NAND2X1 U118 ( .A(n147), .B(n75), .Y(n170) );
  AOI2BB2X1 U122 ( .B0(n77), .B1(n170), .A0N(n77), .A1N(n170), .Y(SUM[4]) );
  XNOR2XL U127 ( .A(n11), .B(n65), .Y(SUM[7]) );
  XOR2XL U129 ( .A(n12), .B(n68), .Y(SUM[6]) );
  OAI21X2 U130 ( .A0(n178), .A1(n176), .B0(n49), .Y(n47) );
  NOR2X4 U131 ( .A(B[9]), .B(A[9]), .Y(n52) );
  NAND3X8 U133 ( .A(n172), .B(n53), .C(n173), .Y(n51) );
  INVX3 U134 ( .A(n58), .Y(n184) );
  NAND2X2 U135 ( .A(B[6]), .B(A[6]), .Y(n67) );
  OR2X2 U136 ( .A(B[4]), .B(A[4]), .Y(n147) );
  NAND2X1 U138 ( .A(B[8]), .B(A[8]), .Y(n58) );
  NAND2X1 U139 ( .A(B[9]), .B(A[9]), .Y(n53) );
  XNOR2X1 U141 ( .A(n47), .B(n7), .Y(SUM[11]) );
  NAND2X2 U142 ( .A(B[3]), .B(A[3]), .Y(n77) );
  NOR2X2 U145 ( .A(B[11]), .B(A[11]), .Y(n45) );
  NAND2XL U147 ( .A(B[11]), .B(A[11]), .Y(n46) );
  NAND2X1 U148 ( .A(B[10]), .B(A[10]), .Y(n49) );
  NAND2X1 U150 ( .A(B[4]), .B(A[4]), .Y(n75) );
  OR2X2 U151 ( .A(B[8]), .B(A[8]), .Y(n158) );
  OR2X2 U152 ( .A(B[7]), .B(A[7]), .Y(n163) );
  NAND2X1 U153 ( .A(B[7]), .B(A[7]), .Y(n64) );
  NOR2X2 U157 ( .A(B[6]), .B(A[6]), .Y(n66) );
  AOI21X1 U159 ( .A0(n158), .A1(n164), .B0(n184), .Y(n171) );
  NAND2BX4 U160 ( .AN(n52), .B(n184), .Y(n173) );
  NAND3BX4 U161 ( .AN(n52), .B(n164), .C(n158), .Y(n172) );
  INVX12 U162 ( .A(n152), .Y(n179) );
  INVX1 U164 ( .A(n37), .Y(n174) );
  OR2X4 U171 ( .A(A[5]), .B(B[5]), .Y(n157) );
  INVX3 U177 ( .A(n147), .Y(n181) );
  INVX3 U178 ( .A(n175), .Y(n176) );
  INVX1 U179 ( .A(n161), .Y(n185) );
  NAND2BX1 U180 ( .AN(n66), .B(n67), .Y(n12) );
  XNOR2X1 U181 ( .A(n10), .B(n164), .Y(SUM[8]) );
  INVX1 U183 ( .A(n52), .Y(n183) );
  INVX1 U185 ( .A(n45), .Y(n182) );
  XOR2X1 U187 ( .A(n179), .B(n6), .Y(SUM[12]) );
  INVX1 U189 ( .A(n40), .Y(n188) );
  INVX1 U191 ( .A(n36), .Y(n187) );
  INVX1 U195 ( .A(n35), .Y(n186) );
  INVX1 U196 ( .A(n23), .Y(n189) );
  BUFX8 U197 ( .A(B[12]), .Y(n177) );
  AND2X2 U200 ( .A(B[5]), .B(A[5]), .Y(n161) );
endmodule


module MBF_DW01_add_24 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n18,
         n19, n20, n21, n22, n23, n27, n29, n30, n31, n32, n40, n42, n44, n45,
         n49, n52, n54, n55, n60, n61, n62, n65, n66, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n80, n81, n82, n83, n88, n89, n90, n93, n94,
         n96, n97, n98, n99, n100, n101, n102, n103, n105, n106, n107, n109,
         \A[0] , \A[1] , n175, n176, n177, n178, n179, n180, n181, n46, n5,
         n47, n48, n183, n184, n185, n186, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];

  OA21XL U143 ( .A0(n44), .A1(n52), .B0(n45), .Y(n176) );
  NOR2X1 U219 ( .A(n99), .B(n102), .Y(n97) );
  NAND2X1 U204 ( .A(B[5]), .B(A[5]), .Y(n100) );
  NAND2X1 U162 ( .A(B[6]), .B(A[6]), .Y(n94) );
  XNOR2X1 U152 ( .A(n1), .B(n8), .Y(SUM[10]) );
  XNOR2X1 U197 ( .A(n186), .B(n12), .Y(SUM[6]) );
  XOR2X1 U254 ( .A(n15), .B(n109), .Y(SUM[3]) );
  OAI21X1 U156 ( .A0(n99), .A1(n103), .B0(n100), .Y(n98) );
  NOR2X2 U158 ( .A(n183), .B(A[9]), .Y(n72) );
  NAND2X1 U212 ( .A(B[7]), .B(A[7]), .Y(n89) );
  NAND2X1 U207 ( .A(B[8]), .B(A[8]), .Y(n80) );
  NAND2X1 U202 ( .A(n183), .B(A[9]), .Y(n73) );
  AOI21X1 U148 ( .A0(n70), .A1(n83), .B0(n71), .Y(n69) );
  OAI21X4 U191 ( .A0(n96), .A1(n68), .B0(n69), .Y(n1) );
  NOR2X2 U157 ( .A(n183), .B(A[11]), .Y(n60) );
  NAND2X1 U190 ( .A(n183), .B(A[10]), .Y(n66) );
  NAND2X1 U201 ( .A(n183), .B(A[11]), .Y(n61) );
  NAND2X1 U160 ( .A(n183), .B(A[12]), .Y(n52) );
  NAND2X1 U257 ( .A(n183), .B(A[13]), .Y(n45) );
  NAND2X1 U186 ( .A(n183), .B(A[14]), .Y(n32) );
  NAND2X1 U248 ( .A(n204), .B(n32), .Y(n4) );
  NAND2X1 U245 ( .A(n202), .B(n52), .Y(n6) );
  XNOR2X1 U192 ( .A(n177), .B(n6), .Y(SUM[12]) );
  NOR2X1 U251 ( .A(n40), .B(n31), .Y(n29) );
  NAND2X1 U213 ( .A(n183), .B(A[15]), .Y(n27) );
  NAND2X1 U250 ( .A(n180), .B(n27), .Y(n3) );
  XNOR2X1 U195 ( .A(n179), .B(n3), .Y(SUM[15]) );
  AOI21X1 U177 ( .A0(n1), .A1(n195), .B0(n200), .Y(n62) );
  NAND2X1 U243 ( .A(n206), .B(n61), .Y(n7) );
  XOR2X1 U242 ( .A(n62), .B(n7), .Y(SUM[11]) );
  NOR2BX1 U198 ( .AN(n54), .B(n49), .Y(n47) );
  AOI21X1 U176 ( .A0(n1), .A1(n47), .B0(n48), .Y(n46) );
  NAND2X1 U196 ( .A(n203), .B(n45), .Y(n5) );
  XOR2X1 U247 ( .A(n46), .B(n5), .Y(SUM[13]) );
  NOR2X1 U216 ( .A(n40), .B(n22), .Y(n20) );
  AOI21X1 U232 ( .A0(n180), .A1(n199), .B0(n205), .Y(n23) );
  AOI21X1 U172 ( .A0(n1), .A1(n20), .B0(n21), .Y(n19) );
  OR2X1 U214 ( .A(n184), .B(A[16]), .Y(n181) );
  NAND2X1 U260 ( .A(n183), .B(A[16]), .Y(n18) );
  NAND2X1 U259 ( .A(n181), .B(n18), .Y(n2) );
  XOR2X1 U258 ( .A(n19), .B(n2), .Y(SUM[16]) );
  AOI21X1 U241 ( .A0(n186), .A1(n82), .B0(n83), .Y(n81) );
  NAND2X1 U163 ( .A(n194), .B(n80), .Y(n10) );
  XOR2X1 U240 ( .A(n81), .B(n10), .Y(SUM[8]) );
  AOI21X1 U227 ( .A0(n186), .A1(n192), .B0(n191), .Y(n90) );
  NAND2X1 U226 ( .A(n193), .B(n89), .Y(n11) );
  XOR2X1 U225 ( .A(n90), .B(n11), .Y(SUM[7]) );
  NOR2BX1 U173 ( .AN(n82), .B(n77), .Y(n75) );
  OAI2BB1X1 U179 ( .A0N(n83), .A1N(n194), .B0(n80), .Y(n76) );
  AOI21X1 U231 ( .A0(n186), .A1(n75), .B0(n76), .Y(n74) );
  NAND2X1 U230 ( .A(n197), .B(n73), .Y(n9) );
  XOR2X1 U229 ( .A(n74), .B(n9), .Y(SUM[9]) );
  NAND2X1 U220 ( .A(n195), .B(n66), .Y(n8) );
  NAND2X1 U221 ( .A(n192), .B(n94), .Y(n12) );
  NAND2X1 U223 ( .A(n190), .B(n100), .Y(n13) );
  XNOR2X1 U222 ( .A(n101), .B(n13), .Y(SUM[5]) );
  NAND2X1 U238 ( .A(n189), .B(n103), .Y(n14) );
  XOR2X1 U237 ( .A(n185), .B(n14), .Y(SUM[4]) );
  NAND2X1 U255 ( .A(n188), .B(n107), .Y(n15) );
  NOR2X2 U200 ( .A(n183), .B(A[13]), .Y(n44) );
  OR2X1 U205 ( .A(n184), .B(A[15]), .Y(n180) );
  OAI21X1 U165 ( .A0(n198), .A1(n22), .B0(n23), .Y(n21) );
  NOR2X1 U206 ( .A(B[6]), .B(A[6]), .Y(n93) );
  AOI21X4 U218 ( .A0(n105), .A1(n97), .B0(n98), .Y(n96) );
  NOR2X2 U217 ( .A(n72), .B(n77), .Y(n70) );
  AO21X2 U187 ( .A0(n1), .A1(n29), .B0(n30), .Y(n179) );
  NOR2X1 U154 ( .A(n183), .B(A[10]), .Y(n65) );
  OAI21X2 U183 ( .A0(n60), .A1(n66), .B0(n61), .Y(n55) );
  NAND2X1 U171 ( .A(B[2]), .B(A[2]), .Y(n109) );
  NOR2X2 U199 ( .A(n183), .B(A[12]), .Y(n49) );
  OAI2BB1X2 U184 ( .A0N(n55), .A1N(n42), .B0(n176), .Y(n175) );
  NOR2X1 U209 ( .A(n183), .B(A[14]), .Y(n31) );
  AO21X1 U194 ( .A0(n1), .A1(n196), .B0(n175), .Y(n178) );
  NOR2X1 U203 ( .A(B[5]), .B(A[5]), .Y(n99) );
  OA21XL U144 ( .A0(B[2]), .A1(A[2]), .B0(n109), .Y(SUM[2]) );
  NAND2X2 U145 ( .A(n204), .B(n180), .Y(n22) );
  NOR2X2 U146 ( .A(B[7]), .B(A[7]), .Y(n88) );
  NOR2X1 U147 ( .A(B[8]), .B(A[8]), .Y(n77) );
  OAI21X1 U149 ( .A0(n88), .A1(n94), .B0(n89), .Y(n83) );
  AO21X1 U150 ( .A0(n1), .A1(n54), .B0(n55), .Y(n177) );
  NAND2XL U151 ( .A(B[3]), .B(A[3]), .Y(n107) );
  XNOR2X4 U153 ( .A(n178), .B(n4), .Y(SUM[14]) );
  OAI21X1 U155 ( .A0(n198), .A1(n31), .B0(n32), .Y(n30) );
  OAI21X1 U159 ( .A0(n106), .A1(n109), .B0(n107), .Y(n105) );
  NOR2X1 U161 ( .A(n49), .B(n44), .Y(n42) );
  NOR2X1 U164 ( .A(n65), .B(n60), .Y(n54) );
  NAND2X1 U166 ( .A(n54), .B(n42), .Y(n40) );
  NAND2X1 U167 ( .A(n70), .B(n82), .Y(n68) );
  CLKINVX1 U168 ( .A(n175), .Y(n198) );
  OAI21XL U169 ( .A0(n72), .A1(n80), .B0(n73), .Y(n71) );
  OAI21XL U170 ( .A0(n201), .A1(n49), .B0(n52), .Y(n48) );
  NOR2X1 U174 ( .A(n88), .B(n93), .Y(n82) );
  CLKINVX1 U175 ( .A(n96), .Y(n186) );
  OAI21XL U178 ( .A0(n185), .A1(n102), .B0(n103), .Y(n101) );
  INVX1 U180 ( .A(n65), .Y(n195) );
  CLKBUFX2 U181 ( .A(B[9]), .Y(n184) );
  CLKINVX1 U182 ( .A(n105), .Y(n185) );
  INVX1 U185 ( .A(n93), .Y(n192) );
  NOR2X1 U188 ( .A(B[4]), .B(A[4]), .Y(n102) );
  NOR2X1 U189 ( .A(B[3]), .B(A[3]), .Y(n106) );
  NAND2X1 U193 ( .A(B[4]), .B(A[4]), .Y(n103) );
  INVX1 U208 ( .A(n106), .Y(n188) );
  INVX1 U210 ( .A(n102), .Y(n189) );
  INVX1 U211 ( .A(n99), .Y(n190) );
  INVX1 U215 ( .A(n72), .Y(n197) );
  INVX1 U224 ( .A(n88), .Y(n193) );
  INVX1 U228 ( .A(n94), .Y(n191) );
  INVX1 U233 ( .A(n77), .Y(n194) );
  INVX1 U234 ( .A(n27), .Y(n205) );
  INVX1 U235 ( .A(n32), .Y(n199) );
  INVX1 U236 ( .A(n44), .Y(n203) );
  INVX1 U239 ( .A(n55), .Y(n201) );
  INVX1 U244 ( .A(n60), .Y(n206) );
  INVX1 U246 ( .A(n66), .Y(n200) );
  INVX1 U249 ( .A(n49), .Y(n202) );
  INVX1 U252 ( .A(n31), .Y(n204) );
  CLKINVX1 U253 ( .A(n40), .Y(n196) );
  BUFX12 U256 ( .A(B[9]), .Y(n183) );
endmodule


module MBF_DW01_add_25 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n18,
         n19, n20, n21, n22, n23, n27, n29, n30, n31, n32, n40, n42, n43, n44,
         n45, n46, n47, n48, n49, n52, n54, n55, n60, n61, n62, n65, n66, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n80, n81, n82, n83, n88,
         n89, n90, n93, n94, n96, n97, n98, n99, n100, n101, n102, n103, n105,
         n106, n107, n109, \A[0] , \A[1] , n175, n176, n177, n178, n179, n180,
         n183, n184, n185, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];

  AO21X1 U192 ( .A0(n1), .A1(n197), .B0(n175), .Y(n177) );
  NOR2X1 U218 ( .A(n99), .B(n102), .Y(n97) );
  NOR2X2 U208 ( .A(B[8]), .B(A[8]), .Y(n77) );
  NAND2X1 U204 ( .A(B[6]), .B(A[6]), .Y(n94) );
  OR2X1 U205 ( .A(B[9]), .B(A[15]), .Y(n179) );
  XNOR2X1 U219 ( .A(n1), .B(n8), .Y(SUM[10]) );
  XNOR2X1 U196 ( .A(n185), .B(n12), .Y(SUM[6]) );
  XOR2X1 U257 ( .A(n15), .B(n109), .Y(SUM[3]) );
  NAND2X1 U203 ( .A(B[5]), .B(A[5]), .Y(n100) );
  OAI21X1 U165 ( .A0(n99), .A1(n103), .B0(n100), .Y(n98) );
  NOR2X2 U153 ( .A(n183), .B(A[9]), .Y(n72) );
  NAND2X1 U170 ( .A(n70), .B(n82), .Y(n68) );
  NAND2X1 U211 ( .A(B[7]), .B(A[7]), .Y(n89) );
  NAND2X1 U207 ( .A(B[8]), .B(A[8]), .Y(n80) );
  NAND2X1 U201 ( .A(n183), .B(A[9]), .Y(n73) );
  AOI21X1 U164 ( .A0(n70), .A1(n83), .B0(n71), .Y(n69) );
  OAI21X4 U189 ( .A0(n96), .A1(n68), .B0(n69), .Y(n1) );
  NOR2X2 U151 ( .A(n183), .B(A[11]), .Y(n60) );
  NAND2X1 U188 ( .A(n183), .B(A[10]), .Y(n66) );
  NAND2X1 U200 ( .A(n183), .B(A[11]), .Y(n61) );
  NAND2X1 U158 ( .A(n183), .B(A[12]), .Y(n52) );
  NAND2X1 U248 ( .A(n205), .B(n52), .Y(n6) );
  XNOR2X1 U190 ( .A(n176), .B(n6), .Y(SUM[12]) );
  NAND2X1 U264 ( .A(n183), .B(A[13]), .Y(n45) );
  NAND2X1 U166 ( .A(n183), .B(A[14]), .Y(n32) );
  NAND2X1 U251 ( .A(n195), .B(n32), .Y(n4) );
  XNOR2X1 U191 ( .A(n177), .B(n4), .Y(SUM[14]) );
  NAND2X1 U212 ( .A(n183), .B(A[15]), .Y(n27) );
  NAND2X1 U253 ( .A(n179), .B(n27), .Y(n3) );
  XNOR2X1 U193 ( .A(n178), .B(n3), .Y(SUM[15]) );
  NAND2X1 U238 ( .A(n195), .B(n179), .Y(n22) );
  NOR2X1 U216 ( .A(n40), .B(n22), .Y(n20) );
  AOI21X1 U233 ( .A0(n179), .A1(n203), .B0(n206), .Y(n23) );
  AOI21X1 U183 ( .A0(n1), .A1(n20), .B0(n21), .Y(n19) );
  NAND2X1 U260 ( .A(n180), .B(n18), .Y(n2) );
  XOR2X1 U259 ( .A(n19), .B(n2), .Y(SUM[16]) );
  AOI21X1 U182 ( .A0(n1), .A1(n202), .B0(n204), .Y(n62) );
  NAND2X1 U246 ( .A(n199), .B(n61), .Y(n7) );
  XOR2X1 U245 ( .A(n62), .B(n7), .Y(SUM[11]) );
  NOR2BX1 U197 ( .AN(n54), .B(n49), .Y(n47) );
  AOI21X1 U181 ( .A0(n1), .A1(n47), .B0(n48), .Y(n46) );
  NAND2X1 U194 ( .A(n196), .B(n45), .Y(n5) );
  XOR2X1 U250 ( .A(n46), .B(n5), .Y(SUM[13]) );
  AOI21X1 U244 ( .A0(n185), .A1(n82), .B0(n83), .Y(n81) );
  NAND2X1 U243 ( .A(n194), .B(n80), .Y(n10) );
  XOR2X1 U242 ( .A(n81), .B(n10), .Y(SUM[8]) );
  AOI21X1 U227 ( .A0(n185), .A1(n190), .B0(n191), .Y(n90) );
  NAND2X1 U226 ( .A(n193), .B(n89), .Y(n11) );
  XOR2X1 U225 ( .A(n90), .B(n11), .Y(SUM[7]) );
  NOR2BX1 U198 ( .AN(n82), .B(n77), .Y(n75) );
  AOI21X1 U231 ( .A0(n185), .A1(n75), .B0(n76), .Y(n74) );
  NAND2X1 U230 ( .A(n201), .B(n73), .Y(n9) );
  XOR2X1 U229 ( .A(n74), .B(n9), .Y(SUM[9]) );
  NAND2X1 U178 ( .A(n190), .B(n94), .Y(n12) );
  NAND2X1 U222 ( .A(n189), .B(n100), .Y(n13) );
  XNOR2X1 U221 ( .A(n101), .B(n13), .Y(SUM[5]) );
  NAND2X1 U240 ( .A(n188), .B(n103), .Y(n14) );
  XOR2X1 U239 ( .A(n184), .B(n14), .Y(SUM[4]) );
  NAND2X1 U258 ( .A(n187), .B(n107), .Y(n15) );
  NOR2X2 U150 ( .A(n183), .B(A[13]), .Y(n44) );
  OAI21X1 U159 ( .A0(n198), .A1(n22), .B0(n23), .Y(n21) );
  AOI21X4 U173 ( .A0(n105), .A1(n97), .B0(n98), .Y(n96) );
  NOR2X1 U171 ( .A(B[6]), .B(A[6]), .Y(n93) );
  OAI21X1 U217 ( .A0(n44), .A1(n52), .B0(n45), .Y(n43) );
  AO21X2 U184 ( .A0(n55), .A1(n42), .B0(n43), .Y(n175) );
  AO21X2 U186 ( .A0(n1), .A1(n29), .B0(n30), .Y(n178) );
  NOR2X1 U155 ( .A(n183), .B(A[10]), .Y(n65) );
  OAI21X2 U157 ( .A0(n60), .A1(n66), .B0(n61), .Y(n55) );
  NOR2X2 U199 ( .A(n183), .B(A[12]), .Y(n49) );
  NOR2X1 U202 ( .A(B[5]), .B(A[5]), .Y(n99) );
  NOR2X1 U147 ( .A(n183), .B(A[14]), .Y(n31) );
  OAI21XL U163 ( .A0(n184), .A1(n102), .B0(n103), .Y(n101) );
  OA21XL U143 ( .A0(B[2]), .A1(A[2]), .B0(n109), .Y(SUM[2]) );
  NAND2X2 U144 ( .A(n54), .B(n42), .Y(n40) );
  NOR2X2 U145 ( .A(B[7]), .B(A[7]), .Y(n88) );
  OAI21X1 U146 ( .A0(n88), .A1(n94), .B0(n89), .Y(n83) );
  NAND2XL U148 ( .A(n202), .B(n66), .Y(n8) );
  INVXL U149 ( .A(n66), .Y(n204) );
  NOR2XL U152 ( .A(n40), .B(n31), .Y(n29) );
  NAND2XL U154 ( .A(B[3]), .B(A[3]), .Y(n107) );
  OAI21X1 U156 ( .A0(n106), .A1(n109), .B0(n107), .Y(n105) );
  OAI21XL U160 ( .A0(n72), .A1(n80), .B0(n73), .Y(n71) );
  NOR2X1 U161 ( .A(n88), .B(n93), .Y(n82) );
  AO21X1 U162 ( .A0(n1), .A1(n54), .B0(n55), .Y(n176) );
  NOR2X1 U167 ( .A(n49), .B(n44), .Y(n42) );
  NOR2X1 U168 ( .A(n65), .B(n60), .Y(n54) );
  OAI21XL U169 ( .A0(n192), .A1(n77), .B0(n80), .Y(n76) );
  CLKINVX1 U172 ( .A(n96), .Y(n185) );
  OAI21XL U174 ( .A0(n198), .A1(n31), .B0(n32), .Y(n30) );
  OAI21XL U175 ( .A0(n200), .A1(n49), .B0(n52), .Y(n48) );
  NOR2X1 U176 ( .A(n72), .B(n77), .Y(n70) );
  INVX1 U177 ( .A(n65), .Y(n202) );
  NAND2X1 U179 ( .A(B[2]), .B(A[2]), .Y(n109) );
  CLKINVX1 U180 ( .A(n105), .Y(n184) );
  INVX1 U185 ( .A(n93), .Y(n190) );
  INVX3 U187 ( .A(n175), .Y(n198) );
  NOR2X1 U195 ( .A(B[4]), .B(A[4]), .Y(n102) );
  NOR2X1 U206 ( .A(B[3]), .B(A[3]), .Y(n106) );
  NAND2X1 U209 ( .A(B[4]), .B(A[4]), .Y(n103) );
  INVX1 U210 ( .A(n106), .Y(n187) );
  INVX1 U213 ( .A(n102), .Y(n188) );
  INVX1 U214 ( .A(n99), .Y(n189) );
  INVX1 U215 ( .A(n72), .Y(n201) );
  INVX1 U220 ( .A(n83), .Y(n192) );
  INVX1 U223 ( .A(n88), .Y(n193) );
  INVX1 U224 ( .A(n94), .Y(n191) );
  INVX1 U228 ( .A(n77), .Y(n194) );
  INVX1 U232 ( .A(n44), .Y(n196) );
  INVX1 U234 ( .A(n55), .Y(n200) );
  INVX1 U235 ( .A(n60), .Y(n199) );
  NAND2X1 U236 ( .A(n183), .B(A[16]), .Y(n18) );
  INVX1 U237 ( .A(n27), .Y(n206) );
  INVX1 U241 ( .A(n32), .Y(n203) );
  INVX1 U247 ( .A(n31), .Y(n195) );
  CLKINVX1 U249 ( .A(n40), .Y(n197) );
  INVX1 U252 ( .A(n49), .Y(n205) );
  BUFX12 U254 ( .A(B[9]), .Y(n183) );
  OR2X1 U255 ( .A(B[9]), .B(A[16]), .Y(n180) );
endmodule


module MBF_DW01_add_26 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n18,
         n19, n20, n21, n22, n23, n27, n29, n30, n31, n32, n40, n42, n44, n45,
         n46, n47, n48, n49, n52, n54, n55, n60, n61, n62, n66, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n80, n81, n82, n83, n88, n89, n90,
         n93, n94, n96, n97, n98, n99, n100, n101, n102, n103, n105, n106,
         n107, n109, \A[0] , \A[1] , n178, n179, n180, n181, n182, n183, n184,
         n187, n189, n190, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];

  OA21XL U174 ( .A0(n44), .A1(n52), .B0(n45), .Y(n179) );
  AO21X1 U177 ( .A0(n1), .A1(n54), .B0(n55), .Y(n180) );
  NOR2X1 U220 ( .A(n99), .B(n102), .Y(n97) );
  NOR2X2 U172 ( .A(B[8]), .B(A[8]), .Y(n77) );
  NAND2X1 U155 ( .A(B[6]), .B(A[6]), .Y(n94) );
  OR2X1 U216 ( .A(B[13]), .B(A[16]), .Y(n184) );
  XNOR2X1 U162 ( .A(n1), .B(n8), .Y(SUM[10]) );
  XNOR2X1 U200 ( .A(n190), .B(n12), .Y(SUM[6]) );
  XOR2X1 U166 ( .A(n15), .B(n109), .Y(SUM[3]) );
  NAND2X1 U207 ( .A(B[5]), .B(A[5]), .Y(n100) );
  OAI21X1 U164 ( .A0(n99), .A1(n103), .B0(n100), .Y(n98) );
  NOR2X2 U153 ( .A(B[15]), .B(A[9]), .Y(n72) );
  NAND2X1 U193 ( .A(n70), .B(n82), .Y(n68) );
  NAND2X1 U214 ( .A(B[7]), .B(A[7]), .Y(n89) );
  NAND2X1 U210 ( .A(B[8]), .B(A[8]), .Y(n80) );
  NAND2X1 U206 ( .A(B[15]), .B(A[9]), .Y(n73) );
  OAI21X4 U192 ( .A0(n96), .A1(n68), .B0(n69), .Y(n1) );
  NOR2X1 U175 ( .A(n40), .B(n31), .Y(n29) );
  NAND2X1 U191 ( .A(B[15]), .B(A[10]), .Y(n66) );
  NAND2X1 U205 ( .A(B[15]), .B(A[11]), .Y(n61) );
  NAND2X1 U203 ( .A(B[15]), .B(A[12]), .Y(n52) );
  NAND2X1 U260 ( .A(B[15]), .B(A[13]), .Y(n45) );
  NAND2X1 U185 ( .A(B[15]), .B(A[14]), .Y(n32) );
  NAND2X1 U254 ( .A(n183), .B(n27), .Y(n3) );
  XNOR2X1 U198 ( .A(n182), .B(n3), .Y(SUM[15]) );
  NAND2X1 U252 ( .A(n183), .B(n32), .Y(n4) );
  XNOR2X1 U196 ( .A(n181), .B(n4), .Y(SUM[14]) );
  NAND2X1 U249 ( .A(n183), .B(n52), .Y(n6) );
  XNOR2X1 U195 ( .A(n180), .B(n6), .Y(SUM[12]) );
  AOI21X1 U167 ( .A0(n1), .A1(n183), .B0(n203), .Y(n62) );
  NAND2X1 U248 ( .A(n183), .B(n61), .Y(n7) );
  XOR2X1 U247 ( .A(n62), .B(n7), .Y(SUM[11]) );
  NOR2BX1 U201 ( .AN(n54), .B(n49), .Y(n47) );
  AOI21X1 U178 ( .A0(n1), .A1(n47), .B0(n48), .Y(n46) );
  NAND2X1 U199 ( .A(n183), .B(n45), .Y(n5) );
  XOR2X1 U251 ( .A(n46), .B(n5), .Y(SUM[13]) );
  NAND2X1 U151 ( .A(n183), .B(n183), .Y(n22) );
  NOR2X1 U158 ( .A(n40), .B(n22), .Y(n20) );
  AOI21X1 U233 ( .A0(n183), .A1(n203), .B0(n203), .Y(n23) );
  AOI21X1 U165 ( .A0(n1), .A1(n20), .B0(n21), .Y(n19) );
  NAND2X1 U262 ( .A(n184), .B(n18), .Y(n2) );
  XOR2X1 U261 ( .A(n19), .B(n2), .Y(SUM[16]) );
  AOI21X1 U245 ( .A0(n190), .A1(n82), .B0(n83), .Y(n81) );
  NAND2X1 U244 ( .A(n198), .B(n80), .Y(n10) );
  XOR2X1 U243 ( .A(n81), .B(n10), .Y(SUM[8]) );
  AOI21X1 U227 ( .A0(n190), .A1(n195), .B0(n196), .Y(n90) );
  NAND2X1 U226 ( .A(n187), .B(n89), .Y(n11) );
  XOR2X1 U225 ( .A(n90), .B(n11), .Y(SUM[7]) );
  NOR2BX1 U154 ( .AN(n82), .B(n77), .Y(n75) );
  AOI21X1 U231 ( .A0(n190), .A1(n75), .B0(n76), .Y(n74) );
  NAND2X1 U230 ( .A(n202), .B(n73), .Y(n9) );
  XOR2X1 U229 ( .A(n74), .B(n9), .Y(SUM[9]) );
  NAND2X1 U221 ( .A(n183), .B(n66), .Y(n8) );
  NAND2X1 U222 ( .A(n195), .B(n94), .Y(n12) );
  NAND2X1 U224 ( .A(n194), .B(n100), .Y(n13) );
  XNOR2X1 U223 ( .A(n101), .B(n13), .Y(SUM[5]) );
  NAND2X1 U241 ( .A(n193), .B(n103), .Y(n14) );
  XOR2X1 U240 ( .A(n189), .B(n14), .Y(SUM[4]) );
  NAND2X1 U258 ( .A(n192), .B(n107), .Y(n15) );
  OAI21X1 U171 ( .A0(n201), .A1(n31), .B0(n32), .Y(n30) );
  NAND2XL U263 ( .A(B[16]), .B(A[16]), .Y(n18) );
  OAI21X1 U176 ( .A0(n201), .A1(n22), .B0(n23), .Y(n21) );
  AOI21X4 U163 ( .A0(n105), .A1(n97), .B0(n98), .Y(n96) );
  NOR2X1 U143 ( .A(B[6]), .B(A[6]), .Y(n93) );
  NAND2X2 U157 ( .A(n54), .B(n42), .Y(n40) );
  OAI2BB1X2 U183 ( .A0N(n55), .A1N(n42), .B0(n179), .Y(n178) );
  NOR2X1 U152 ( .A(B[5]), .B(A[5]), .Y(n99) );
  AO21X1 U197 ( .A0(n1), .A1(n199), .B0(n178), .Y(n181) );
  OAI21XL U186 ( .A0(n189), .A1(n102), .B0(n103), .Y(n101) );
  OAI21XL U144 ( .A0(n197), .A1(n77), .B0(n80), .Y(n76) );
  AOI21X1 U145 ( .A0(n70), .A1(n83), .B0(n71), .Y(n69) );
  OA21XL U146 ( .A0(B[2]), .A1(A[2]), .B0(n109), .Y(SUM[2]) );
  AOI2BB1X1 U147 ( .A0N(B[15]), .A1N(A[10]), .B0(n60), .Y(n54) );
  OR2X2 U148 ( .A(B[7]), .B(A[7]), .Y(n187) );
  INVX20 U149 ( .A(n187), .Y(n88) );
  NOR2X2 U150 ( .A(n49), .B(n44), .Y(n42) );
  AO21X2 U156 ( .A0(n1), .A1(n29), .B0(n30), .Y(n182) );
  OAI21X1 U159 ( .A0(n88), .A1(n94), .B0(n89), .Y(n83) );
  NAND2XL U160 ( .A(B[3]), .B(A[3]), .Y(n107) );
  OAI21X1 U161 ( .A0(n106), .A1(n109), .B0(n107), .Y(n105) );
  OAI21XL U168 ( .A0(n72), .A1(n80), .B0(n73), .Y(n71) );
  NOR2X1 U169 ( .A(n88), .B(n93), .Y(n82) );
  OAI21X1 U170 ( .A0(n60), .A1(n66), .B0(n61), .Y(n55) );
  OAI21XL U173 ( .A0(n200), .A1(n49), .B0(n52), .Y(n48) );
  NOR2X1 U179 ( .A(n72), .B(n77), .Y(n70) );
  CLKINVX1 U180 ( .A(n96), .Y(n190) );
  NOR2X1 U181 ( .A(B[15]), .B(A[12]), .Y(n49) );
  OR2X2 U182 ( .A(B[15]), .B(A[15]), .Y(n183) );
  NOR2X1 U184 ( .A(B[15]), .B(A[11]), .Y(n60) );
  NOR2X1 U187 ( .A(B[15]), .B(A[13]), .Y(n44) );
  CLKINVX1 U188 ( .A(n32), .Y(n203) );
  INVX3 U189 ( .A(n178), .Y(n201) );
  NAND2X1 U190 ( .A(B[2]), .B(A[2]), .Y(n109) );
  CLKINVX1 U194 ( .A(n105), .Y(n189) );
  INVX1 U202 ( .A(n93), .Y(n195) );
  NAND2XL U204 ( .A(B[15]), .B(A[15]), .Y(n27) );
  NOR2X1 U208 ( .A(B[4]), .B(A[4]), .Y(n102) );
  NOR2X1 U209 ( .A(B[3]), .B(A[3]), .Y(n106) );
  NAND2X1 U211 ( .A(B[4]), .B(A[4]), .Y(n103) );
  INVX1 U212 ( .A(n106), .Y(n192) );
  INVX1 U213 ( .A(n102), .Y(n193) );
  INVX1 U215 ( .A(n99), .Y(n194) );
  INVX1 U217 ( .A(n72), .Y(n202) );
  INVX1 U218 ( .A(n83), .Y(n197) );
  INVX1 U219 ( .A(n94), .Y(n196) );
  INVX1 U228 ( .A(n77), .Y(n198) );
  INVX1 U232 ( .A(n55), .Y(n200) );
  CLKINVX1 U234 ( .A(n40), .Y(n199) );
  NOR2X1 U235 ( .A(B[15]), .B(A[14]), .Y(n31) );
endmodule


module MBF_DW01_sub_26 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   n5, n7, n8, n9, n10, n11, n12, n13, n14, n22, n23, n24, n25, n26, n30,
         n31, n32, n33, n40, n41, n43, n44, n47, n48, n49, n53, n54, n55, n56,
         n59, n60, n61, n65, n66, n67, n68, n71, n72, n73, \A[0] , \A[1] ,
         \A[2] , n153, n155, n156, n159, n160, n162, n163, n164, n17, n165,
         n158, n157, n161, n16, n6, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200;
  assign DIFF[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign DIFF[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign DIFF[2] = \A[2] ;
  assign \A[2]  = A[2];

  NAND2X1 U170 ( .A(n189), .B(A[5]), .Y(n68) );
  NAND2X1 U176 ( .A(A[14]), .B(n186), .Y(n30) );
  AOI21X1 U150 ( .A0(n162), .A1(n198), .B0(n199), .Y(n26) );
  NAND2X1 U207 ( .A(A[15]), .B(n186), .Y(n23) );
  NAND2BX1 U142 ( .AN(n22), .B(n23), .Y(n156) );
  NAND2BX1 U168 ( .AN(n43), .B(n44), .Y(n7) );
  NAND2X1 U179 ( .A(n200), .B(n33), .Y(n5) );
  NAND2BX1 U180 ( .AN(n47), .B(n48), .Y(n8) );
  NAND2BX1 U181 ( .AN(n55), .B(n56), .Y(n10) );
  NAND2BX1 U182 ( .AN(n59), .B(n60), .Y(n11) );
  NAND2X1 U194 ( .A(n188), .B(n68), .Y(n13) );
  NAND2X1 U196 ( .A(n196), .B(n72), .Y(n14) );
  NOR2X4 U48 ( .A(n192), .B(A[11]), .Y(n43) );
  NAND2X2 U183 ( .A(n195), .B(A[9]), .Y(n53) );
  NAND2X2 U133 ( .A(n190), .B(A[8]), .Y(n56) );
  NAND2X1 U191 ( .A(n200), .B(n162), .Y(n25) );
  NAND2X1 U177 ( .A(A[13]), .B(n186), .Y(n33) );
  OAI21X4 U136 ( .A0(n182), .A1(n25), .B0(n26), .Y(n24) );
  NOR2X1 U208 ( .A(A[15]), .B(n186), .Y(n22) );
  NOR2X4 U132 ( .A(n190), .B(A[8]), .Y(n55) );
  NOR2X1 U169 ( .A(A[13]), .B(n186), .Y(n32) );
  AND2X1 U145 ( .A(n162), .B(n30), .Y(n155) );
  OAI21X4 U122 ( .A0(n182), .A1(n32), .B0(n33), .Y(n31) );
  OR2X1 U121 ( .A(A[14]), .B(n186), .Y(n162) );
  NAND2XL U146 ( .A(n163), .B(n53), .Y(n9) );
  XNOR2XL U199 ( .A(n185), .B(A[3]), .Y(DIFF[3]) );
  XOR2X2 U137 ( .A(n17), .B(n165), .Y(DIFF[16]) );
  OAI21X4 U138 ( .A0(n182), .A1(n158), .B0(n157), .Y(n17) );
  AND2X1 U198 ( .A(n161), .B(n16), .Y(n165) );
  OR2X1 U175 ( .A(n25), .B(n22), .Y(n158) );
  OR2X1 U186 ( .A(A[16]), .B(n186), .Y(n161) );
  NAND2X1 U185 ( .A(A[16]), .B(n186), .Y(n16) );
  NAND2X1 U189 ( .A(n175), .B(n41), .Y(n6) );
  OAI21X4 U178 ( .A0(n160), .A1(n55), .B0(n56), .Y(n54) );
  OA21X4 U192 ( .A0(n61), .A1(n59), .B0(n60), .Y(n160) );
  AOI21X4 U172 ( .A0(n164), .A1(n66), .B0(n184), .Y(n61) );
  NOR2X4 U118 ( .A(n191), .B(A[12]), .Y(n40) );
  CLKINVX1 U119 ( .A(n5), .Y(n172) );
  XOR2X1 U120 ( .A(n8), .B(n49), .Y(DIFF[10]) );
  OR2X4 U123 ( .A(n187), .B(A[6]), .Y(n164) );
  NAND2X2 U124 ( .A(n194), .B(A[7]), .Y(n60) );
  XNOR2XL U125 ( .A(n9), .B(n54), .Y(DIFF[9]) );
  XNOR2X4 U126 ( .A(n182), .B(n172), .Y(DIFF[13]) );
  OA21X2 U127 ( .A0(n26), .A1(n22), .B0(n23), .Y(n157) );
  CLKINVX2 U128 ( .A(B[4]), .Y(n183) );
  INVX8 U129 ( .A(n181), .Y(n182) );
  OR2X2 U130 ( .A(n195), .B(A[9]), .Y(n163) );
  INVX2 U131 ( .A(B[9]), .Y(n195) );
  INVX3 U134 ( .A(B[14]), .Y(n186) );
  NAND2BX2 U135 ( .AN(n47), .B(n180), .Y(n176) );
  NOR2X4 U139 ( .A(n178), .B(n179), .Y(n177) );
  NOR2X1 U140 ( .A(n185), .B(A[3]), .Y(n73) );
  XOR2X2 U141 ( .A(n31), .B(n155), .Y(DIFF[14]) );
  XOR2X2 U143 ( .A(n24), .B(n197), .Y(DIFF[15]) );
  XOR2X1 U144 ( .A(n7), .B(n153), .Y(DIFF[11]) );
  INVX12 U147 ( .A(B[12]), .Y(n191) );
  XOR2X4 U148 ( .A(n173), .B(n6), .Y(DIFF[12]) );
  OA21X4 U149 ( .A0(n153), .A1(n43), .B0(n44), .Y(n173) );
  CLKINVX1 U151 ( .A(B[5]), .Y(n189) );
  CLKINVX2 U152 ( .A(B[8]), .Y(n190) );
  CLKINVX3 U153 ( .A(B[10]), .Y(n193) );
  NOR2X2 U154 ( .A(n189), .B(A[5]), .Y(n67) );
  OAI21X4 U155 ( .A0(n44), .A1(n40), .B0(n41), .Y(n179) );
  INVX3 U156 ( .A(B[11]), .Y(n192) );
  NOR2X2 U157 ( .A(n43), .B(n40), .Y(n180) );
  NOR3X2 U158 ( .A(n43), .B(n48), .C(n40), .Y(n178) );
  NOR2X1 U159 ( .A(n183), .B(A[4]), .Y(n71) );
  NAND2X1 U160 ( .A(n183), .B(A[4]), .Y(n72) );
  NAND2X2 U161 ( .A(n192), .B(A[11]), .Y(n44) );
  NAND2X1 U162 ( .A(n191), .B(A[12]), .Y(n41) );
  CLKINVX1 U163 ( .A(n53), .Y(n174) );
  NAND2X2 U164 ( .A(n193), .B(A[10]), .Y(n48) );
  NOR2X2 U165 ( .A(n193), .B(A[10]), .Y(n47) );
  NOR2X2 U166 ( .A(n194), .B(A[7]), .Y(n59) );
  OA21X4 U167 ( .A0(n73), .A1(n71), .B0(n72), .Y(n159) );
  OAI21X4 U171 ( .A0(n159), .A1(n67), .B0(n68), .Y(n66) );
  AOI21X4 U173 ( .A0(n54), .A1(n163), .B0(n174), .Y(n49) );
  OA21X4 U174 ( .A0(n49), .A1(n47), .B0(n48), .Y(n153) );
  INVX1 U184 ( .A(n40), .Y(n175) );
  OAI21X4 U187 ( .A0(n49), .A1(n176), .B0(n177), .Y(n181) );
  INVX2 U188 ( .A(B[3]), .Y(n185) );
  XOR2XL U190 ( .A(n13), .B(n159), .Y(DIFF[5]) );
  XOR2XL U193 ( .A(n14), .B(n73), .Y(DIFF[4]) );
  INVX1 U195 ( .A(n156), .Y(n197) );
  INVX1 U197 ( .A(n32), .Y(n200) );
  INVX1 U200 ( .A(n33), .Y(n198) );
  INVX3 U201 ( .A(B[6]), .Y(n187) );
  INVX3 U202 ( .A(B[7]), .Y(n194) );
  INVX1 U203 ( .A(n71), .Y(n196) );
  INVX1 U204 ( .A(n67), .Y(n188) );
  XNOR2X1 U205 ( .A(n12), .B(n66), .Y(DIFF[6]) );
  NAND2X1 U206 ( .A(n164), .B(n65), .Y(n12) );
  INVX1 U209 ( .A(n184), .Y(n65) );
  XOR2X1 U210 ( .A(n11), .B(n61), .Y(DIFF[7]) );
  XOR2X1 U211 ( .A(n10), .B(n160), .Y(DIFF[8]) );
  INVX1 U212 ( .A(n30), .Y(n199) );
  AND2X2 U213 ( .A(n187), .B(A[6]), .Y(n184) );
endmodule


module MBF_DW01_sub_25 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   n5, n6, n7, n8, n9, n11, n12, n22, n23, n25, n26, n30, n32, n33, n41,
         n43, n44, n47, n48, n53, n55, n56, n59, n60, n65, n67, n68, n71, n72,
         n78, \A[0] , \A[1] , \A[2] , net8836, net22561, n153, n155, n156,
         n163, n167, n168, n172, n173, n17, n170, net25849, n166, n169, n16,
         net22810, n46, n61, n66, n165, n73, n161, net24980, n24, n171,
         net25850, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211;
  assign DIFF[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign DIFF[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign DIFF[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign net8836 = B[14];

  OR2X1 U162 ( .A(n25), .B(n22), .Y(net22810) );
  OA21XL U125 ( .A0(n26), .A1(n22), .B0(n23), .Y(n166) );
  NAND2X1 U190 ( .A(n192), .B(A[4]), .Y(n72) );
  NAND2X2 U156 ( .A(n205), .B(A[7]), .Y(n60) );
  NOR2X1 U174 ( .A(A[13]), .B(n193), .Y(n32) );
  OR2X1 U204 ( .A(A[16]), .B(n193), .Y(n169) );
  XOR2X1 U163 ( .A(n8), .B(n155), .Y(DIFF[10]) );
  NAND2X1 U186 ( .A(n210), .B(net22561), .Y(n25) );
  NAND2X1 U175 ( .A(A[13]), .B(n193), .Y(n33) );
  NAND2X1 U178 ( .A(A[14]), .B(n193), .Y(n30) );
  AOI21X1 U147 ( .A0(net22561), .A1(n209), .B0(n208), .Y(n26) );
  NAND2X1 U203 ( .A(A[15]), .B(n193), .Y(n23) );
  NAND2X1 U218 ( .A(A[16]), .B(n193), .Y(n16) );
  NAND2X1 U206 ( .A(n78), .B(n41), .Y(n6) );
  NAND2X1 U197 ( .A(n201), .B(n44), .Y(n7) );
  NAND2X1 U196 ( .A(n210), .B(n33), .Y(n5) );
  NAND2BX1 U139 ( .AN(n47), .B(n48), .Y(n8) );
  OA21X4 U143 ( .A0(n173), .A1(n59), .B0(n60), .Y(n156) );
  XNOR2X1 U223 ( .A(n9), .B(n172), .Y(DIFF[9]) );
  NAND2X1 U212 ( .A(n204), .B(n60), .Y(n11) );
  NAND2X1 U199 ( .A(n168), .B(n65), .Y(n12) );
  NAND2X2 U157 ( .A(n203), .B(A[10]), .Y(n48) );
  NAND2X2 U151 ( .A(n211), .B(B[12]), .Y(n78) );
  NOR2X4 U161 ( .A(n198), .B(A[8]), .Y(n55) );
  OR2X4 U129 ( .A(n196), .B(A[6]), .Y(n168) );
  NOR2X4 U170 ( .A(n202), .B(A[11]), .Y(n43) );
  NOR2X4 U144 ( .A(n205), .B(A[7]), .Y(n59) );
  NOR2X1 U202 ( .A(A[15]), .B(n193), .Y(n22) );
  NOR2X2 U179 ( .A(n197), .B(A[5]), .Y(n67) );
  NAND2X2 U146 ( .A(n196), .B(A[6]), .Y(n65) );
  NOR2X4 U122 ( .A(n163), .B(n200), .Y(n153) );
  XOR2X2 U121 ( .A(n153), .B(n6), .Y(DIFF[12]) );
  OAI21X4 U194 ( .A0(n67), .A1(n165), .B0(n68), .Y(n66) );
  AND2X1 U217 ( .A(n169), .B(n16), .Y(n170) );
  OR2X1 U177 ( .A(A[14]), .B(n193), .Y(net22561) );
  XNOR2XL U219 ( .A(n190), .B(A[3]), .Y(DIFF[3]) );
  AND2X1 U208 ( .A(n187), .B(n23), .Y(n171) );
  OAI21X2 U118 ( .A0(n55), .A1(n156), .B0(n56), .Y(n172) );
  AOI21X2 U119 ( .A0(n41), .A1(n44), .B0(n199), .Y(n189) );
  NOR2X2 U120 ( .A(n199), .B(n43), .Y(n188) );
  AOI21X1 U123 ( .A0(n172), .A1(n167), .B0(n206), .Y(n155) );
  NAND2BX1 U124 ( .AN(n67), .B(n68), .Y(n176) );
  AOI2BB2X1 U126 ( .B0(n165), .B1(n176), .A0N(n165), .A1N(n176), .Y(DIFF[5])
         );
  NAND2BX1 U127 ( .AN(n71), .B(n72), .Y(n177) );
  AOI2BB2X1 U128 ( .B0(n73), .B1(n177), .A0N(n73), .A1N(n177), .Y(DIFF[4]) );
  NAND2BX1 U130 ( .AN(n55), .B(n56), .Y(n178) );
  AOI2BB2X1 U131 ( .B0(n156), .B1(n178), .A0N(n156), .A1N(n178), .Y(DIFF[8])
         );
  NAND2X2 U132 ( .A(n197), .B(A[5]), .Y(n68) );
  INVX3 U133 ( .A(B[9]), .Y(n207) );
  CLKINVX2 U134 ( .A(B[3]), .Y(n190) );
  CLKINVX2 U135 ( .A(B[4]), .Y(n192) );
  INVX2 U136 ( .A(B[7]), .Y(n205) );
  NOR2X2 U137 ( .A(n192), .B(A[4]), .Y(n71) );
  AOI21X4 U138 ( .A0(n168), .A1(n66), .B0(n195), .Y(n61) );
  XNOR2XL U140 ( .A(n12), .B(n66), .Y(DIFF[6]) );
  AOI21X2 U141 ( .A0(n168), .A1(n66), .B0(n195), .Y(n173) );
  NAND2X4 U142 ( .A(net24980), .B(n33), .Y(n161) );
  OR2X4 U145 ( .A(n191), .B(n32), .Y(net24980) );
  NOR2X4 U148 ( .A(n190), .B(A[3]), .Y(n73) );
  XOR2X4 U149 ( .A(n161), .B(n179), .Y(DIFF[14]) );
  INVX3 U150 ( .A(B[11]), .Y(n202) );
  INVX3 U152 ( .A(n53), .Y(n206) );
  XOR2XL U153 ( .A(n11), .B(n173), .Y(DIFF[7]) );
  INVX1 U154 ( .A(B[5]), .Y(n197) );
  NAND2X4 U155 ( .A(n206), .B(n186), .Y(n183) );
  INVX3 U158 ( .A(B[8]), .Y(n198) );
  NAND2X2 U159 ( .A(n207), .B(A[9]), .Y(n53) );
  OR2X4 U160 ( .A(n207), .B(A[9]), .Y(n167) );
  NAND2X2 U164 ( .A(n198), .B(A[8]), .Y(n56) );
  NAND2X2 U165 ( .A(n202), .B(A[11]), .Y(n44) );
  CLKINVX1 U166 ( .A(n25), .Y(n180) );
  INVX3 U167 ( .A(net8836), .Y(n193) );
  AND2X2 U168 ( .A(net22561), .B(n30), .Y(n179) );
  NOR2X4 U169 ( .A(n203), .B(A[10]), .Y(n47) );
  INVX3 U171 ( .A(n47), .Y(n186) );
  NAND2BX4 U172 ( .AN(n191), .B(n180), .Y(net25850) );
  NAND3X6 U173 ( .A(n181), .B(n186), .C(n167), .Y(n184) );
  OAI21X4 U176 ( .A0(n185), .A1(n55), .B0(n56), .Y(n181) );
  BUFX4 U180 ( .A(n46), .Y(n182) );
  OA21X4 U181 ( .A0(n61), .A1(n59), .B0(n60), .Y(n185) );
  NAND3X8 U182 ( .A(n183), .B(n184), .C(n48), .Y(n46) );
  INVX1 U183 ( .A(n22), .Y(n187) );
  NAND2X6 U184 ( .A(net25850), .B(n26), .Y(n24) );
  XOR2X4 U185 ( .A(n24), .B(n171), .Y(DIFF[15]) );
  AOI21X4 U187 ( .A0(n46), .A1(n188), .B0(n189), .Y(n191) );
  XOR2X4 U188 ( .A(n17), .B(n170), .Y(DIFF[16]) );
  NAND2X6 U189 ( .A(net25849), .B(n166), .Y(n17) );
  OA21X4 U191 ( .A0(n73), .A1(n71), .B0(n72), .Y(n165) );
  CLKINVX1 U192 ( .A(n44), .Y(n200) );
  CLKINVX1 U193 ( .A(n59), .Y(n204) );
  NOR2X4 U195 ( .A(n194), .B(n43), .Y(n163) );
  OR2X4 U198 ( .A(B[12]), .B(n211), .Y(n41) );
  INVX3 U200 ( .A(n182), .Y(n194) );
  OR2X4 U201 ( .A(n191), .B(net22810), .Y(net25849) );
  INVX3 U205 ( .A(n78), .Y(n199) );
  INVX1 U207 ( .A(A[12]), .Y(n211) );
  INVX3 U209 ( .A(n65), .Y(n195) );
  NAND2X1 U210 ( .A(n167), .B(n53), .Y(n9) );
  XOR2X1 U211 ( .A(n5), .B(n191), .Y(DIFF[13]) );
  XOR2X1 U213 ( .A(n7), .B(n194), .Y(DIFF[11]) );
  INVX1 U214 ( .A(n43), .Y(n201) );
  INVX1 U215 ( .A(n30), .Y(n208) );
  INVX1 U216 ( .A(n33), .Y(n209) );
  INVX1 U220 ( .A(n32), .Y(n210) );
  INVX3 U221 ( .A(B[10]), .Y(n203) );
  INVX3 U222 ( .A(B[6]), .Y(n196) );
endmodule


module MBF_DW01_sub_24 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   n5, n7, n8, n9, n10, n11, n12, n14, n22, n23, n25, n26, n30, n33, n38,
         n39, n40, n41, n43, n44, n47, n48, n53, n55, n56, n59, n60, n65, n67,
         n68, n71, n72, n73, \A[0] , \A[1] , \A[2] , n154, n155, n163, n164,
         n169, n172, n176, n17, n173, n157, n167, n171, n16, n153, n42, n6,
         n46, n165, n175, n170, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221;
  assign DIFF[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign DIFF[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign DIFF[2] = \A[2] ;
  assign \A[2]  = A[2];

  NOR2X1 U197 ( .A(A[15]), .B(n209), .Y(n22) );
  XNOR2X1 U151 ( .A(n9), .B(n155), .Y(DIFF[9]) );
  XOR2X1 U208 ( .A(n14), .B(n73), .Y(DIFF[4]) );
  NAND2X1 U178 ( .A(n185), .B(n169), .Y(n25) );
  NAND2X1 U218 ( .A(A[14]), .B(n209), .Y(n30) );
  AOI21X1 U159 ( .A0(n169), .A1(n221), .B0(n220), .Y(n26) );
  NAND2X1 U198 ( .A(A[15]), .B(n209), .Y(n23) );
  NAND2X1 U200 ( .A(n169), .B(n30), .Y(n164) );
  NAND2X1 U205 ( .A(n215), .B(n48), .Y(n8) );
  XOR2X1 U204 ( .A(n8), .B(n176), .Y(DIFF[10]) );
  NAND2X1 U192 ( .A(n185), .B(n33), .Y(n5) );
  NAND2BX1 U176 ( .AN(n55), .B(n56), .Y(n10) );
  NAND2BX1 U195 ( .AN(n59), .B(n60), .Y(n11) );
  NAND2X1 U194 ( .A(n172), .B(n65), .Y(n12) );
  XNOR2X1 U220 ( .A(n12), .B(n154), .Y(DIFF[6]) );
  NAND2X1 U209 ( .A(n219), .B(n72), .Y(n14) );
  NAND2X2 U162 ( .A(n213), .B(A[12]), .Y(n41) );
  OAI21X4 U121 ( .A0(n40), .A1(n44), .B0(n41), .Y(n39) );
  NOR2X2 U143 ( .A(n211), .B(A[5]), .Y(n67) );
  NOR2X4 U217 ( .A(n216), .B(A[10]), .Y(n47) );
  NOR2X4 U175 ( .A(n212), .B(A[8]), .Y(n55) );
  NAND2X1 U215 ( .A(A[13]), .B(n209), .Y(n33) );
  NAND2X2 U182 ( .A(n217), .B(A[7]), .Y(n60) );
  XOR2X2 U134 ( .A(n163), .B(n164), .Y(DIFF[14]) );
  XNOR2XL U219 ( .A(n208), .B(A[3]), .Y(DIFF[3]) );
  NOR2X4 U142 ( .A(n217), .B(A[7]), .Y(n59) );
  OR2X1 U214 ( .A(A[14]), .B(n209), .Y(n169) );
  AND2X1 U212 ( .A(n171), .B(n16), .Y(n173) );
  OA21XL U157 ( .A0(n26), .A1(n22), .B0(n23), .Y(n167) );
  OR2X1 U199 ( .A(A[16]), .B(n209), .Y(n171) );
  NAND2X1 U213 ( .A(A[16]), .B(n209), .Y(n16) );
  NAND2X1 U161 ( .A(n192), .B(n41), .Y(n6) );
  OA21X4 U207 ( .A0(n175), .A1(n59), .B0(n60), .Y(n165) );
  INVX3 U118 ( .A(B[11]), .Y(n214) );
  INVX3 U119 ( .A(B[9]), .Y(n188) );
  NAND2X2 U120 ( .A(n188), .B(A[9]), .Y(n53) );
  XNOR2X2 U122 ( .A(n42), .B(n6), .Y(DIFF[12]) );
  AOI21X1 U123 ( .A0(n170), .A1(n155), .B0(n218), .Y(n176) );
  NAND2BX1 U124 ( .AN(n43), .B(n44), .Y(n7) );
  NAND2BX1 U125 ( .AN(n67), .B(n68), .Y(n182) );
  AOI2BB2X1 U126 ( .B0(n189), .B1(n182), .A0N(n189), .A1N(n182), .Y(DIFF[5])
         );
  AOI2BB2X1 U127 ( .B0(n7), .B1(n183), .A0N(n7), .A1N(n191), .Y(DIFF[11]) );
  CLKINVX1 U128 ( .A(n46), .Y(n183) );
  INVX3 U129 ( .A(B[6]), .Y(n184) );
  NOR2X4 U130 ( .A(n206), .B(A[4]), .Y(n71) );
  OR2X4 U131 ( .A(n188), .B(A[9]), .Y(n170) );
  INVX3 U132 ( .A(n53), .Y(n218) );
  NAND2XL U133 ( .A(n170), .B(n53), .Y(n9) );
  OAI21X2 U135 ( .A0(n191), .A1(n43), .B0(n44), .Y(n42) );
  NAND2X2 U136 ( .A(n214), .B(A[11]), .Y(n44) );
  NOR2X4 U137 ( .A(n214), .B(A[11]), .Y(n43) );
  CLKINVX1 U138 ( .A(B[4]), .Y(n206) );
  NAND2X2 U139 ( .A(n212), .B(A[8]), .Y(n56) );
  NOR2X2 U140 ( .A(n40), .B(n43), .Y(n38) );
  NAND2X1 U141 ( .A(n216), .B(A[10]), .Y(n48) );
  OAI21X1 U144 ( .A0(n55), .A1(n165), .B0(n56), .Y(n155) );
  NOR2X4 U145 ( .A(n213), .B(A[12]), .Y(n40) );
  INVX3 U146 ( .A(n65), .Y(n201) );
  OAI21X4 U147 ( .A0(n190), .A1(n67), .B0(n68), .Y(n200) );
  NAND2X4 U148 ( .A(n157), .B(n167), .Y(n17) );
  NAND2X2 U149 ( .A(n211), .B(A[5]), .Y(n68) );
  INVX1 U150 ( .A(B[5]), .Y(n211) );
  INVX4 U152 ( .A(B[14]), .Y(n209) );
  OA21XL U153 ( .A0(n73), .A1(n71), .B0(n72), .Y(n189) );
  NOR2X2 U154 ( .A(n208), .B(A[3]), .Y(n73) );
  CLKINVX1 U155 ( .A(n26), .Y(n197) );
  AND2X6 U156 ( .A(n38), .B(n207), .Y(n195) );
  AND2X4 U158 ( .A(n202), .B(n48), .Y(n187) );
  AND2X4 U160 ( .A(n205), .B(n170), .Y(n204) );
  INVX3 U163 ( .A(B[8]), .Y(n212) );
  INVX3 U164 ( .A(B[12]), .Y(n213) );
  OAI21XL U165 ( .A0(n189), .A1(n67), .B0(n68), .Y(n154) );
  NOR2BX1 U166 ( .AN(n23), .B(n22), .Y(n194) );
  AOI21X1 U167 ( .A0(n39), .A1(n207), .B0(n197), .Y(n196) );
  XOR2X2 U168 ( .A(n199), .B(n5), .Y(DIFF[13]) );
  NOR2X4 U169 ( .A(n153), .B(n39), .Y(n199) );
  OR2X1 U170 ( .A(A[13]), .B(n209), .Y(n185) );
  NOR2X1 U171 ( .A(n25), .B(n22), .Y(n186) );
  OAI21X4 U172 ( .A0(n153), .A1(n39), .B0(n186), .Y(n157) );
  AND2X8 U173 ( .A(n46), .B(n38), .Y(n153) );
  NAND2X8 U174 ( .A(n203), .B(n187), .Y(n46) );
  OA21X4 U177 ( .A0(n73), .A1(n71), .B0(n72), .Y(n190) );
  AOI21X4 U179 ( .A0(n200), .A1(n172), .B0(n201), .Y(n175) );
  XOR2XL U180 ( .A(n11), .B(n175), .Y(DIFF[7]) );
  OAI21X4 U181 ( .A0(n165), .A1(n55), .B0(n56), .Y(n205) );
  XOR2X1 U183 ( .A(n10), .B(n165), .Y(DIFF[8]) );
  INVX2 U184 ( .A(n46), .Y(n191) );
  OAI2BB1X4 U185 ( .A0N(n195), .A1N(n46), .B0(n196), .Y(n193) );
  INVX1 U186 ( .A(n40), .Y(n192) );
  XOR2X4 U187 ( .A(n193), .B(n194), .Y(DIFF[15]) );
  AOI21X4 U188 ( .A0(n153), .A1(n185), .B0(n198), .Y(n163) );
  OAI2BB1X4 U189 ( .A0N(n185), .A1N(n39), .B0(n33), .Y(n198) );
  XOR2X4 U190 ( .A(n17), .B(n173), .Y(DIFF[16]) );
  OR2X8 U191 ( .A(n210), .B(A[6]), .Y(n172) );
  NAND2X4 U193 ( .A(n184), .B(A[6]), .Y(n65) );
  NAND2BX4 U196 ( .AN(n47), .B(n204), .Y(n203) );
  NAND2BX4 U201 ( .AN(n47), .B(n218), .Y(n202) );
  NAND2X2 U202 ( .A(n206), .B(A[4]), .Y(n72) );
  CLKINVX2 U203 ( .A(B[3]), .Y(n208) );
  CLKINVX1 U206 ( .A(n47), .Y(n215) );
  CLKINVX1 U210 ( .A(n25), .Y(n207) );
  INVX3 U211 ( .A(B[10]), .Y(n216) );
  INVX3 U216 ( .A(B[7]), .Y(n217) );
  INVX3 U221 ( .A(B[6]), .Y(n210) );
  INVX1 U222 ( .A(n71), .Y(n219) );
  INVX1 U223 ( .A(n30), .Y(n220) );
  INVX1 U224 ( .A(n33), .Y(n221) );
endmodule


module MBF_DW01_add_27 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n6, n8, n9, n11, n12, n13, n14, n17, n18, n23, n24, n26, n27, n31,
         n33, n34, n41, n42, n44, n45, n47, n49, n54, n60, n61, n62, n63, n64,
         n68, n69, n70, n71, n72, n76, n79, \A[0] , \A[1] , \A[2] , n154, n157,
         n158, n161, n162, n163, n164, n165, n166, n167, n168, n170, n174, n25,
         n171, n32, n172, n159, n39, n160, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n190, n191, n192,
         n193, n194, n195;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];

  NOR2X1 U165 ( .A(B[13]), .B(A[13]), .Y(n33) );
  OR2X1 U181 ( .A(B[13]), .B(A[16]), .Y(n168) );
  XNOR2X1 U172 ( .A(n8), .B(n174), .Y(SUM[10]) );
  XNOR2X1 U184 ( .A(n157), .B(n185), .Y(SUM[8]) );
  XNOR2X1 U178 ( .A(n14), .B(n188), .Y(SUM[4]) );
  NAND2X1 U149 ( .A(B[5]), .B(A[5]), .Y(n71) );
  NAND2X1 U168 ( .A(B[13]), .B(A[14]), .Y(n31) );
  NAND2X1 U163 ( .A(n194), .B(n164), .Y(n26) );
  AOI21X1 U164 ( .A0(n164), .A1(n193), .B0(n195), .Y(n27) );
  NAND2X1 U203 ( .A(B[13]), .B(A[16]), .Y(n17) );
  NAND2X1 U188 ( .A(n191), .B(n42), .Y(n6) );
  NAND2X1 U121 ( .A(n183), .B(n49), .Y(n8) );
  NAND2X1 U174 ( .A(n192), .B(n63), .Y(n11) );
  NAND2X1 U150 ( .A(n190), .B(n71), .Y(n13) );
  OA21X4 U131 ( .A0(n186), .A1(n44), .B0(n45), .Y(n154) );
  NAND2X1 U141 ( .A(B[13]), .B(A[13]), .Y(n34) );
  AND2X2 U177 ( .A(n166), .B(n60), .Y(n157) );
  OR2X1 U204 ( .A(B[13]), .B(A[14]), .Y(n164) );
  AND2X1 U202 ( .A(n168), .B(n17), .Y(n170) );
  XOR2X2 U123 ( .A(n154), .B(n6), .Y(SUM[12]) );
  AND2X1 U192 ( .A(n164), .B(n31), .Y(n172) );
  OAI2BB1X4 U196 ( .A0N(n39), .A1N(n47), .B0(n160), .Y(n159) );
  NOR2X2 U154 ( .A(n44), .B(n41), .Y(n39) );
  OA21X4 U197 ( .A0(n45), .A1(n41), .B0(n42), .Y(n160) );
  OAI2BB1X4 U195 ( .A0N(n166), .A1N(n61), .B0(n60), .Y(n158) );
  OAI21X4 U135 ( .A0(n64), .A1(n62), .B0(n63), .Y(n61) );
  XOR2X2 U111 ( .A(n18), .B(n170), .Y(SUM[16]) );
  NAND2BX1 U112 ( .AN(n44), .B(n45), .Y(n175) );
  AOI2BB2X1 U113 ( .B0(n186), .B1(n175), .A0N(n186), .A1N(n175), .Y(SUM[11])
         );
  NAND2X1 U114 ( .A(n194), .B(n34), .Y(n176) );
  AOI2BB2X1 U115 ( .B0(n187), .B1(n176), .A0N(n187), .A1N(n176), .Y(SUM[13])
         );
  OA21XL U116 ( .A0(B[3]), .A1(A[3]), .B0(n79), .Y(SUM[3]) );
  NAND2XL U117 ( .A(B[13]), .B(A[15]), .Y(n24) );
  NAND2X2 U118 ( .A(B[8]), .B(A[8]), .Y(n60) );
  CLKINVX2 U119 ( .A(n54), .Y(n182) );
  XOR2X4 U120 ( .A(n32), .B(n172), .Y(SUM[14]) );
  XNOR2XL U122 ( .A(n12), .B(n69), .Y(SUM[6]) );
  NAND2X4 U124 ( .A(B[6]), .B(A[6]), .Y(n68) );
  XOR2X4 U125 ( .A(n25), .B(n171), .Y(SUM[15]) );
  NAND2X2 U126 ( .A(B[3]), .B(A[3]), .Y(n79) );
  NOR2X2 U127 ( .A(B[12]), .B(A[12]), .Y(n41) );
  OR2X2 U128 ( .A(B[10]), .B(A[10]), .Y(n183) );
  NAND2X2 U129 ( .A(B[9]), .B(A[9]), .Y(n54) );
  OR2X2 U130 ( .A(B[9]), .B(A[9]), .Y(n163) );
  INVX3 U132 ( .A(n68), .Y(n179) );
  NOR2X2 U133 ( .A(B[7]), .B(A[7]), .Y(n62) );
  NAND2X1 U134 ( .A(B[10]), .B(A[10]), .Y(n49) );
  OAI21X4 U136 ( .A0(n187), .A1(n162), .B0(n161), .Y(n18) );
  CLKINVX1 U137 ( .A(n183), .Y(n181) );
  AND2X4 U138 ( .A(n178), .B(n76), .Y(n72) );
  NAND2X2 U139 ( .A(n188), .B(n167), .Y(n178) );
  NOR2X1 U140 ( .A(B[5]), .B(A[5]), .Y(n70) );
  NAND2X1 U142 ( .A(B[12]), .B(A[12]), .Y(n42) );
  NAND2X1 U143 ( .A(B[11]), .B(A[11]), .Y(n45) );
  NOR2X2 U144 ( .A(B[11]), .B(A[11]), .Y(n44) );
  OR2X4 U145 ( .A(B[6]), .B(A[6]), .Y(n165) );
  OAI2BB1XL U146 ( .A0N(n163), .A1N(n158), .B0(n54), .Y(n174) );
  INVXL U147 ( .A(n61), .Y(n185) );
  BUFX4 U148 ( .A(n47), .Y(n177) );
  OAI21X2 U151 ( .A0(n187), .A1(n26), .B0(n27), .Y(n25) );
  OAI21X2 U152 ( .A0(n187), .A1(n33), .B0(n34), .Y(n32) );
  OAI21X4 U153 ( .A0(n72), .A1(n70), .B0(n71), .Y(n69) );
  AOI21X4 U155 ( .A0(n69), .A1(n165), .B0(n179), .Y(n64) );
  OAI21X4 U156 ( .A0(n180), .A1(n181), .B0(n49), .Y(n47) );
  AOI21X4 U157 ( .A0(n158), .A1(n163), .B0(n182), .Y(n180) );
  INVX8 U158 ( .A(n159), .Y(n187) );
  XOR2XL U159 ( .A(n11), .B(n64), .Y(SUM[7]) );
  NAND2XL U160 ( .A(n167), .B(n76), .Y(n14) );
  AND2X1 U161 ( .A(n184), .B(n24), .Y(n171) );
  OR2X2 U162 ( .A(B[4]), .B(A[4]), .Y(n167) );
  NAND2XL U166 ( .A(n163), .B(n54), .Y(n9) );
  INVX4 U167 ( .A(n177), .Y(n186) );
  CLKINVX1 U169 ( .A(n41), .Y(n191) );
  INVX3 U170 ( .A(n79), .Y(n188) );
  NAND2X2 U171 ( .A(B[7]), .B(A[7]), .Y(n63) );
  XOR2X1 U173 ( .A(n13), .B(n72), .Y(SUM[5]) );
  INVX1 U175 ( .A(n70), .Y(n190) );
  NAND2X1 U176 ( .A(n68), .B(n165), .Y(n12) );
  INVX1 U179 ( .A(n62), .Y(n192) );
  XNOR2X1 U180 ( .A(n9), .B(n158), .Y(SUM[9]) );
  INVX1 U182 ( .A(n23), .Y(n184) );
  INVX1 U183 ( .A(n31), .Y(n195) );
  INVX1 U185 ( .A(n34), .Y(n193) );
  INVX1 U186 ( .A(n33), .Y(n194) );
  NAND2X1 U187 ( .A(B[4]), .B(A[4]), .Y(n76) );
  OR2X4 U189 ( .A(B[8]), .B(A[8]), .Y(n166) );
  NOR2X1 U190 ( .A(B[13]), .B(A[15]), .Y(n23) );
  OA21XL U191 ( .A0(n27), .A1(n23), .B0(n24), .Y(n161) );
  OR2X1 U193 ( .A(n26), .B(n23), .Y(n162) );
endmodule


module MBF_DW01_sub_19 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   n4, n5, n7, n8, n9, n10, n11, n12, n13, n21, n22, n24, n25, n28, n29,
         n31, n32, n35, n36, n37, n41, n42, n43, n44, n47, n48, n53, n54, n55,
         n56, n59, n60, n61, \A[0] , \A[1] , \A[2] , \A[3] , n145, n151, n153,
         n154, n155, n157, n141, n2, n152, n150, n156, n15, n6, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201;
  assign DIFF[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign DIFF[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign DIFF[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign DIFF[3] = \A[3] ;
  assign \A[3]  = A[3];

  NAND2BX1 U170 ( .AN(n47), .B(n48), .Y(n10) );
  XOR2X1 U185 ( .A(n12), .B(n153), .Y(DIFF[6]) );
  NAND2X1 U155 ( .A(A[14]), .B(n187), .Y(n25) );
  NAND2X1 U173 ( .A(A[15]), .B(n187), .Y(n22) );
  NAND2X1 U193 ( .A(n201), .B(n25), .Y(n4) );
  NAND2X1 U178 ( .A(n194), .B(n29), .Y(n5) );
  NAND2X1 U141 ( .A(n154), .B(n41), .Y(n8) );
  NAND2X1 U163 ( .A(n192), .B(n44), .Y(n9) );
  XOR2X1 U196 ( .A(n10), .B(n157), .Y(DIFF[8]) );
  NAND2X1 U114 ( .A(n190), .B(n56), .Y(n12) );
  NAND2X2 U142 ( .A(n198), .B(A[8]), .Y(n48) );
  NOR2X1 U161 ( .A(A[14]), .B(n187), .Y(n24) );
  NOR2X1 U192 ( .A(A[15]), .B(n187), .Y(n21) );
  NOR2X4 U131 ( .A(n198), .B(A[8]), .Y(n47) );
  XNOR2XL U188 ( .A(n186), .B(A[4]), .Y(DIFF[4]) );
  NAND2X1 U195 ( .A(n156), .B(n15), .Y(n2) );
  OR2X1 U171 ( .A(n24), .B(n21), .Y(n152) );
  OA21XL U181 ( .A0(n21), .A1(n25), .B0(n22), .Y(n150) );
  OR2X1 U174 ( .A(A[16]), .B(n187), .Y(n156) );
  NAND2X1 U194 ( .A(A[16]), .B(n187), .Y(n15) );
  NAND2X1 U177 ( .A(n164), .B(n32), .Y(n6) );
  XOR2X2 U150 ( .A(n145), .B(n5), .Y(DIFF[13]) );
  AND2X6 U103 ( .A(n165), .B(n183), .Y(n176) );
  NOR2X8 U104 ( .A(n175), .B(n174), .Y(n165) );
  NOR2X4 U105 ( .A(n193), .B(A[9]), .Y(n43) );
  CLKINVX4 U106 ( .A(n48), .Y(n170) );
  CLKINVX1 U107 ( .A(n163), .Y(n53) );
  AOI21XL U108 ( .A0(n155), .A1(n54), .B0(n163), .Y(n157) );
  AND2X4 U109 ( .A(n189), .B(A[7]), .Y(n163) );
  OR2X4 U110 ( .A(n31), .B(n28), .Y(n173) );
  NOR2X2 U111 ( .A(n186), .B(A[4]), .Y(n61) );
  XOR2X4 U112 ( .A(n141), .B(n2), .Y(DIFF[16]) );
  NAND2X2 U113 ( .A(n185), .B(A[5]), .Y(n60) );
  XOR2XL U115 ( .A(n13), .B(n61), .Y(DIFF[5]) );
  NAND2BXL U116 ( .AN(n35), .B(n36), .Y(n7) );
  NAND2XL U117 ( .A(n200), .B(n60), .Y(n13) );
  CLKINVX3 U118 ( .A(B[7]), .Y(n189) );
  INVX3 U119 ( .A(B[4]), .Y(n186) );
  OR2X8 U120 ( .A(n189), .B(A[7]), .Y(n155) );
  NOR2X2 U121 ( .A(n185), .B(A[5]), .Y(n59) );
  CLKINVX2 U122 ( .A(B[5]), .Y(n185) );
  INVX8 U123 ( .A(n172), .Y(n188) );
  INVX3 U124 ( .A(B[13]), .Y(n195) );
  INVX3 U125 ( .A(B[8]), .Y(n198) );
  INVX3 U126 ( .A(B[12]), .Y(n196) );
  NOR2X2 U127 ( .A(n195), .B(A[13]), .Y(n28) );
  NAND2X1 U128 ( .A(n195), .B(A[13]), .Y(n29) );
  NAND2X1 U129 ( .A(n197), .B(A[11]), .Y(n36) );
  CLKINVX1 U130 ( .A(B[11]), .Y(n197) );
  OAI2BB2X4 U132 ( .B0(n175), .B1(n167), .A0N(n152), .A1N(n150), .Y(n141) );
  INVX2 U133 ( .A(B[9]), .Y(n193) );
  NAND2X2 U134 ( .A(n199), .B(A[10]), .Y(n41) );
  INVX2 U135 ( .A(B[10]), .Y(n199) );
  NOR2X2 U136 ( .A(n197), .B(A[11]), .Y(n35) );
  NOR2X4 U137 ( .A(n175), .B(n174), .Y(n166) );
  OAI21X4 U138 ( .A0(n32), .A1(n28), .B0(n29), .Y(n174) );
  NOR2X1 U139 ( .A(n191), .B(A[6]), .Y(n55) );
  NAND2X1 U140 ( .A(n191), .B(A[6]), .Y(n56) );
  MXI2X1 U143 ( .A(n25), .B(n179), .S0(n180), .Y(n178) );
  NOR2BX1 U144 ( .AN(n22), .B(n21), .Y(n181) );
  NOR2X1 U145 ( .A(n181), .B(n184), .Y(n183) );
  CLKINVX1 U146 ( .A(n25), .Y(n184) );
  NAND2BX1 U147 ( .AN(n24), .B(n181), .Y(n182) );
  CLKINVX1 U148 ( .A(n181), .Y(n180) );
  NAND2X1 U149 ( .A(n24), .B(n25), .Y(n179) );
  NAND2X2 U151 ( .A(n196), .B(A[12]), .Y(n32) );
  NOR2X2 U152 ( .A(n196), .B(A[12]), .Y(n31) );
  OR2X2 U153 ( .A(n199), .B(A[10]), .Y(n154) );
  XOR2X1 U154 ( .A(n6), .B(n188), .Y(DIFF[12]) );
  OA21X4 U156 ( .A0(n188), .A1(n31), .B0(n32), .Y(n145) );
  CLKINVX1 U157 ( .A(n31), .Y(n164) );
  XOR2X4 U158 ( .A(n166), .B(n4), .Y(DIFF[14]) );
  NOR2X6 U159 ( .A(n165), .B(n182), .Y(n177) );
  NAND2BX4 U160 ( .AN(n174), .B(n150), .Y(n167) );
  OA21X4 U162 ( .A0(n59), .A1(n61), .B0(n60), .Y(n153) );
  OAI21X4 U164 ( .A0(n153), .A1(n55), .B0(n56), .Y(n54) );
  AOI21X4 U165 ( .A0(n54), .A1(n155), .B0(n163), .Y(n168) );
  NOR2X6 U166 ( .A(n169), .B(n170), .Y(n151) );
  NOR2X8 U167 ( .A(n168), .B(n47), .Y(n169) );
  OAI21X4 U168 ( .A0(n151), .A1(n43), .B0(n44), .Y(n42) );
  INVX3 U169 ( .A(n41), .Y(n171) );
  AOI21X4 U172 ( .A0(n42), .A1(n154), .B0(n171), .Y(n37) );
  OAI21X4 U175 ( .A0(n37), .A1(n35), .B0(n36), .Y(n172) );
  NOR2X8 U176 ( .A(n188), .B(n173), .Y(n175) );
  NOR3X6 U179 ( .A(n176), .B(n177), .C(n178), .Y(DIFF[15]) );
  INVX1 U180 ( .A(B[6]), .Y(n191) );
  XNOR2XL U182 ( .A(n8), .B(n42), .Y(DIFF[10]) );
  XOR2XL U183 ( .A(n9), .B(n151), .Y(DIFF[9]) );
  NAND2XL U184 ( .A(n155), .B(n53), .Y(n11) );
  CLKINVX3 U186 ( .A(B[15]), .Y(n187) );
  INVX1 U187 ( .A(n28), .Y(n194) );
  NAND2X2 U189 ( .A(n193), .B(A[9]), .Y(n44) );
  INVX1 U190 ( .A(n59), .Y(n200) );
  INVX1 U191 ( .A(n55), .Y(n190) );
  XNOR2X1 U197 ( .A(n11), .B(n54), .Y(DIFF[7]) );
  INVX1 U198 ( .A(n43), .Y(n192) );
  XOR2X1 U199 ( .A(n7), .B(n37), .Y(DIFF[11]) );
  INVX1 U200 ( .A(n24), .Y(n201) );
endmodule


module MBF_DW01_add_20 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n2, n6, n7, n8, n12, n13, n16, n17, n22, n23, n25, n26, n29, n30, n32,
         n33, n35, n36, n37, n38, n42, n48, n49, n50, n51, n56, n57, n58, n59,
         n60, n64, n67, \A[0] , \A[1] , \A[2] , \A[3] , n138, n143, n144, n145,
         n146, n147, n148, n149, n152, n52, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n175, n176;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];

  OR2X1 U162 ( .A(n25), .B(n22), .Y(n145) );
  OA21XL U161 ( .A0(n22), .A1(n26), .B0(n23), .Y(n144) );
  NAND2X1 U109 ( .A(B[6]), .B(A[6]), .Y(n59) );
  NOR2X1 U136 ( .A(B[14]), .B(A[15]), .Y(n22) );
  OR2X1 U148 ( .A(B[14]), .B(A[16]), .Y(n149) );
  XOR2X1 U163 ( .A(n12), .B(n60), .Y(SUM[6]) );
  XNOR2X1 U160 ( .A(n13), .B(n173), .Y(SUM[5]) );
  NAND2X2 U115 ( .A(B[12]), .B(A[12]), .Y(n33) );
  NAND2X1 U166 ( .A(B[14]), .B(A[14]), .Y(n26) );
  NAND2X1 U167 ( .A(B[14]), .B(A[15]), .Y(n23) );
  NAND2X1 U147 ( .A(B[14]), .B(A[16]), .Y(n16) );
  NAND2X1 U165 ( .A(n149), .B(n16), .Y(n2) );
  NAND2X1 U159 ( .A(n176), .B(n33), .Y(n6) );
  XOR2X1 U112 ( .A(n6), .B(n171), .Y(SUM[12]) );
  NAND2BX1 U142 ( .AN(n36), .B(n37), .Y(n7) );
  NAND2X1 U146 ( .A(n146), .B(n42), .Y(n8) );
  XNOR2X1 U133 ( .A(n8), .B(n143), .Y(SUM[10]) );
  NAND2X1 U125 ( .A(n175), .B(n59), .Y(n12) );
  NAND2X1 U113 ( .A(n148), .B(n64), .Y(n13) );
  NOR2X1 U135 ( .A(B[14]), .B(A[14]), .Y(n25) );
  OAI21X4 U106 ( .A0(n138), .A1(n145), .B0(n144), .Y(n17) );
  OAI2BB1X4 U140 ( .A0N(n147), .A1N(n49), .B0(n48), .Y(n143) );
  OAI21X4 U139 ( .A0(n50), .A1(n52), .B0(n51), .Y(n49) );
  AOI21X4 U143 ( .A0(n57), .A1(n152), .B0(n172), .Y(n52) );
  NAND2X2 U141 ( .A(B[4]), .B(A[4]), .Y(n67) );
  AO21X1 U97 ( .A0(n57), .A1(n152), .B0(n172), .Y(n154) );
  INVXL U98 ( .A(n51), .Y(n155) );
  OAI21XL U99 ( .A0(n50), .A1(n155), .B0(n154), .Y(n156) );
  OAI31XL U100 ( .A0(n50), .A1(n154), .A2(n155), .B0(n156), .Y(SUM[8]) );
  OA21XL U101 ( .A0(B[4]), .A1(A[4]), .B0(n67), .Y(SUM[4]) );
  NAND2X1 U102 ( .A(n152), .B(n56), .Y(n157) );
  XNOR2X1 U103 ( .A(n157), .B(n57), .Y(SUM[7]) );
  NAND2X1 U104 ( .A(n48), .B(n147), .Y(n158) );
  XNOR2X1 U105 ( .A(n158), .B(n49), .Y(SUM[9]) );
  OAI21X2 U107 ( .A0(n29), .A1(n33), .B0(n30), .Y(n164) );
  CLKINVX1 U108 ( .A(n164), .Y(n165) );
  NAND2X2 U110 ( .A(B[8]), .B(A[8]), .Y(n51) );
  OR2X1 U111 ( .A(B[5]), .B(A[5]), .Y(n148) );
  NAND2X2 U114 ( .A(B[7]), .B(A[7]), .Y(n56) );
  OAI21X4 U116 ( .A0(n171), .A1(n32), .B0(n33), .Y(n159) );
  XOR2XL U117 ( .A(n7), .B(n38), .Y(SUM[11]) );
  CLKINVX2 U118 ( .A(n35), .Y(n171) );
  NAND2X1 U119 ( .A(B[11]), .B(A[11]), .Y(n37) );
  XNOR2X2 U120 ( .A(n138), .B(n170), .Y(SUM[14]) );
  NOR2X1 U121 ( .A(n29), .B(n32), .Y(n163) );
  XOR2X4 U122 ( .A(n159), .B(n160), .Y(SUM[13]) );
  NOR2X1 U123 ( .A(B[6]), .B(A[6]), .Y(n58) );
  NAND2X1 U124 ( .A(B[5]), .B(A[5]), .Y(n64) );
  CLKINVX1 U126 ( .A(n42), .Y(n162) );
  NOR2X1 U127 ( .A(B[11]), .B(A[11]), .Y(n36) );
  NAND2X1 U128 ( .A(B[13]), .B(A[13]), .Y(n30) );
  NOR2X2 U129 ( .A(B[13]), .B(A[13]), .Y(n29) );
  NOR2X2 U130 ( .A(B[12]), .B(A[12]), .Y(n32) );
  OR2X2 U131 ( .A(B[10]), .B(A[10]), .Y(n146) );
  OR2X2 U132 ( .A(B[9]), .B(A[9]), .Y(n147) );
  NAND2X1 U134 ( .A(B[9]), .B(A[9]), .Y(n48) );
  NOR2BX1 U137 ( .AN(n30), .B(n29), .Y(n160) );
  NOR2BX1 U138 ( .AN(n26), .B(n25), .Y(n170) );
  INVX8 U144 ( .A(n166), .Y(n138) );
  AOI21X4 U145 ( .A0(n148), .A1(n173), .B0(n161), .Y(n60) );
  CLKINVX6 U149 ( .A(n64), .Y(n161) );
  OAI21X4 U150 ( .A0(n60), .A1(n58), .B0(n59), .Y(n57) );
  AOI21X4 U151 ( .A0(n143), .A1(n146), .B0(n162), .Y(n38) );
  OAI21X4 U152 ( .A0(n38), .A1(n36), .B0(n37), .Y(n35) );
  OAI2BB1X4 U153 ( .A0N(n163), .A1N(n35), .B0(n165), .Y(n166) );
  INVX1 U154 ( .A(n22), .Y(n167) );
  AND2X2 U155 ( .A(n167), .B(n23), .Y(n168) );
  OAI21X4 U156 ( .A0(n138), .A1(n25), .B0(n26), .Y(n169) );
  XOR2X4 U157 ( .A(n169), .B(n168), .Y(SUM[15]) );
  XNOR2X4 U158 ( .A(n17), .B(n2), .Y(SUM[16]) );
  INVX3 U164 ( .A(n67), .Y(n173) );
  INVX3 U168 ( .A(n56), .Y(n172) );
  OR2X4 U169 ( .A(B[7]), .B(A[7]), .Y(n152) );
  CLKINVX1 U170 ( .A(n32), .Y(n176) );
  NAND2X2 U171 ( .A(B[10]), .B(A[10]), .Y(n42) );
  NOR2X2 U172 ( .A(B[8]), .B(A[8]), .Y(n50) );
  INVX1 U173 ( .A(n58), .Y(n175) );
endmodule


module MBF_DW01_add_21 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n7, n8, n9, n10, n11, n12, n13, n22, n23, n24, n25, n26, n29, n30,
         n32, n33, n35, n36, n37, n42, n48, n49, n50, n51, n52, n56, n57, n58,
         n59, n60, n64, n67, \A[0] , \A[1] , \A[2] , \A[3] , n134, n135, n140,
         n141, n142, n143, n17, n2, n139, n138, n144, n16, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n166, n167, n168, n169;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];

  NAND2X1 U104 ( .A(B[6]), .B(A[6]), .Y(n59) );
  NOR2X1 U151 ( .A(B[14]), .B(A[15]), .Y(n22) );
  XNOR2X1 U135 ( .A(n9), .B(n49), .Y(SUM[9]) );
  XNOR2X1 U148 ( .A(n8), .B(n161), .Y(SUM[10]) );
  XNOR2X1 U163 ( .A(n13), .B(n164), .Y(SUM[5]) );
  NOR2X2 U174 ( .A(B[11]), .B(A[11]), .Y(n36) );
  NAND2X2 U130 ( .A(B[12]), .B(A[12]), .Y(n33) );
  NAND2X1 U152 ( .A(B[14]), .B(A[15]), .Y(n23) );
  NAND2BX1 U144 ( .AN(n36), .B(n37), .Y(n7) );
  AOI21X1 U98 ( .A0(n142), .A1(n161), .B0(n166), .Y(n135) );
  XOR2X1 U100 ( .A(n7), .B(n135), .Y(SUM[11]) );
  NAND2X1 U149 ( .A(n142), .B(n42), .Y(n8) );
  NAND2BX1 U147 ( .AN(n50), .B(n51), .Y(n10) );
  NAND2X1 U146 ( .A(n140), .B(n56), .Y(n11) );
  NAND2BX1 U143 ( .AN(n58), .B(n59), .Y(n12) );
  NAND2X1 U140 ( .A(n141), .B(n64), .Y(n13) );
  NOR2X1 U118 ( .A(B[6]), .B(A[6]), .Y(n58) );
  NAND2X1 U167 ( .A(B[14]), .B(A[14]), .Y(n26) );
  AOI21X4 U67 ( .A0(n140), .A1(n57), .B0(n163), .Y(n52) );
  NOR2X1 U141 ( .A(B[14]), .B(A[14]), .Y(n25) );
  OAI21X4 U136 ( .A0(n58), .A1(n60), .B0(n59), .Y(n57) );
  AND2X1 U112 ( .A(n169), .B(n23), .Y(n134) );
  OAI21X2 U127 ( .A0(n160), .A1(n139), .B0(n138), .Y(n17) );
  NAND2X1 U166 ( .A(n144), .B(n16), .Y(n2) );
  OR2X1 U165 ( .A(n25), .B(n22), .Y(n139) );
  OA21XL U164 ( .A0(n22), .A1(n26), .B0(n23), .Y(n138) );
  OR2X1 U153 ( .A(B[14]), .B(A[16]), .Y(n144) );
  NAND2X1 U150 ( .A(B[14]), .B(A[16]), .Y(n16) );
  AND2X2 U97 ( .A(n168), .B(n26), .Y(n148) );
  OA21XL U99 ( .A0(B[4]), .A1(A[4]), .B0(n67), .Y(SUM[4]) );
  NAND2BX1 U101 ( .AN(n32), .B(n33), .Y(n147) );
  AOI2BB2X1 U102 ( .B0(n162), .B1(n147), .A0N(n162), .A1N(n147), .Y(SUM[12])
         );
  OR2X2 U103 ( .A(B[9]), .B(A[9]), .Y(n143) );
  OAI21X4 U105 ( .A0(n50), .A1(n52), .B0(n51), .Y(n49) );
  XNOR2X1 U106 ( .A(n160), .B(n148), .Y(SUM[14]) );
  OR2X1 U107 ( .A(B[5]), .B(A[5]), .Y(n141) );
  NAND2XL U108 ( .A(n143), .B(n48), .Y(n9) );
  OR2X2 U109 ( .A(B[7]), .B(A[7]), .Y(n140) );
  INVX1 U110 ( .A(n29), .Y(n158) );
  INVX3 U111 ( .A(n142), .Y(n153) );
  CLKINVX1 U113 ( .A(n64), .Y(n167) );
  OAI2BB1X2 U114 ( .A0N(n143), .A1N(n49), .B0(n48), .Y(n161) );
  NAND2X1 U115 ( .A(B[8]), .B(A[8]), .Y(n51) );
  NAND2X1 U116 ( .A(B[9]), .B(A[9]), .Y(n48) );
  INVX1 U117 ( .A(n56), .Y(n163) );
  NAND2X2 U119 ( .A(B[7]), .B(A[7]), .Y(n56) );
  NAND2X1 U120 ( .A(B[5]), .B(A[5]), .Y(n64) );
  NAND2X1 U121 ( .A(B[11]), .B(A[11]), .Y(n37) );
  INVX3 U122 ( .A(n42), .Y(n166) );
  INVX3 U123 ( .A(n67), .Y(n164) );
  XOR2XL U124 ( .A(n10), .B(n52), .Y(SUM[8]) );
  OAI21X2 U125 ( .A0(n160), .A1(n25), .B0(n26), .Y(n24) );
  NOR2X2 U126 ( .A(B[8]), .B(A[8]), .Y(n50) );
  NAND2X1 U128 ( .A(B[4]), .B(A[4]), .Y(n67) );
  OR2X2 U129 ( .A(B[10]), .B(A[10]), .Y(n142) );
  NAND2X1 U131 ( .A(B[10]), .B(A[10]), .Y(n42) );
  NOR2X1 U132 ( .A(n29), .B(n32), .Y(n156) );
  OAI2BB1X2 U133 ( .A0N(n158), .A1N(n159), .B0(n30), .Y(n157) );
  CLKINVX1 U134 ( .A(n33), .Y(n159) );
  NOR2X2 U137 ( .A(B[12]), .B(A[12]), .Y(n32) );
  NAND3X6 U138 ( .A(n149), .B(n37), .C(n150), .Y(n35) );
  NAND2BX4 U139 ( .AN(n36), .B(n166), .Y(n150) );
  OAI2BB1X4 U142 ( .A0N(n143), .A1N(n49), .B0(n48), .Y(n151) );
  NOR2X6 U145 ( .A(n153), .B(n36), .Y(n152) );
  NAND2X6 U154 ( .A(n151), .B(n152), .Y(n149) );
  XOR2X4 U155 ( .A(n154), .B(n155), .Y(SUM[13]) );
  NOR2BX4 U156 ( .AN(n30), .B(n29), .Y(n155) );
  OAI21X4 U157 ( .A0(n162), .A1(n32), .B0(n33), .Y(n154) );
  AOI21X4 U158 ( .A0(n35), .A1(n156), .B0(n157), .Y(n160) );
  XNOR2X4 U159 ( .A(n17), .B(n2), .Y(SUM[16]) );
  XOR2X4 U160 ( .A(n24), .B(n134), .Y(SUM[15]) );
  XNOR2XL U161 ( .A(n11), .B(n57), .Y(SUM[7]) );
  XOR2XL U162 ( .A(n12), .B(n60), .Y(SUM[6]) );
  AOI21X4 U168 ( .A0(n141), .A1(n164), .B0(n167), .Y(n60) );
  NAND2X1 U169 ( .A(B[13]), .B(A[13]), .Y(n30) );
  NOR2X4 U170 ( .A(B[13]), .B(A[13]), .Y(n29) );
  INVX1 U171 ( .A(n25), .Y(n168) );
  INVX3 U172 ( .A(n35), .Y(n162) );
  INVX1 U173 ( .A(n22), .Y(n169) );
endmodule


module MBF_DW01_add_22 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n4, n6, n7, n8, n9, n11, n13, n22, n23, n25, n26, n29, n30, n31, n32,
         n33, n36, n37, n42, n48, n49, n50, n51, n52, n56, n57, n58, n59, n60,
         n64, n67, \A[0] , \A[1] , \A[2] , \A[3] , n133, n141, n142, n147,
         n148, n149, n150, n17, n2, n145, n144, n151, n16, n24, n136, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n177, n178, n179, n180, n181;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];

  OR2X1 U166 ( .A(n25), .B(n22), .Y(n145) );
  OA21XL U165 ( .A0(n22), .A1(n26), .B0(n23), .Y(n144) );
  XOR2X1 U135 ( .A(n7), .B(n158), .Y(SUM[11]) );
  XNOR2X1 U177 ( .A(n11), .B(n57), .Y(SUM[7]) );
  XNOR2X1 U171 ( .A(n13), .B(n175), .Y(SUM[5]) );
  NAND2X1 U161 ( .A(B[14]), .B(A[15]), .Y(n23) );
  NAND2X1 U164 ( .A(n181), .B(n26), .Y(n4) );
  NAND2BX1 U154 ( .AN(n36), .B(n37), .Y(n7) );
  NAND2X1 U169 ( .A(n178), .B(n33), .Y(n6) );
  XOR2X1 U131 ( .A(n171), .B(n6), .Y(SUM[12]) );
  NAND2X1 U156 ( .A(n149), .B(n48), .Y(n9) );
  XNOR2X1 U183 ( .A(n9), .B(n172), .Y(SUM[9]) );
  NAND2X1 U172 ( .A(n150), .B(n64), .Y(n13) );
  NOR2X4 U143 ( .A(B[12]), .B(A[12]), .Y(n32) );
  OR2X4 U138 ( .A(n50), .B(n52), .Y(n142) );
  NAND2X1 U133 ( .A(B[14]), .B(A[14]), .Y(n26) );
  NOR2X1 U182 ( .A(B[14]), .B(A[15]), .Y(n22) );
  NOR2X1 U178 ( .A(B[14]), .B(A[14]), .Y(n25) );
  NAND2XL U160 ( .A(n148), .B(n42), .Y(n8) );
  AOI21X4 U149 ( .A0(n147), .A1(n57), .B0(n174), .Y(n52) );
  NAND2X2 U125 ( .A(B[5]), .B(A[5]), .Y(n64) );
  AOI21X4 U148 ( .A0(n150), .A1(n175), .B0(n180), .Y(n60) );
  OAI21X2 U118 ( .A0(n170), .A1(n25), .B0(n26), .Y(n24) );
  AND2X1 U132 ( .A(n169), .B(n23), .Y(n136) );
  OA21X2 U97 ( .A0(n29), .A1(n33), .B0(n30), .Y(n168) );
  CLKINVX1 U98 ( .A(n48), .Y(n161) );
  NAND2X2 U99 ( .A(B[4]), .B(A[4]), .Y(n67) );
  OR2X2 U100 ( .A(B[5]), .B(A[5]), .Y(n150) );
  NAND2X1 U101 ( .A(B[11]), .B(A[11]), .Y(n37) );
  XOR2X1 U102 ( .A(n170), .B(n4), .Y(SUM[14]) );
  OAI21X2 U103 ( .A0(n60), .A1(n58), .B0(n59), .Y(n57) );
  OR2X2 U104 ( .A(n166), .B(n37), .Y(n165) );
  AO21X1 U105 ( .A0(n57), .A1(n147), .B0(n174), .Y(n153) );
  INVXL U106 ( .A(n51), .Y(n154) );
  OAI21XL U107 ( .A0(n50), .A1(n154), .B0(n153), .Y(n155) );
  OAI31XL U108 ( .A0(n50), .A1(n153), .A2(n154), .B0(n155), .Y(SUM[8]) );
  OA21XL U109 ( .A0(B[4]), .A1(A[4]), .B0(n67), .Y(SUM[4]) );
  NAND2BX1 U110 ( .AN(n58), .B(n59), .Y(n156) );
  AOI2BB2X1 U111 ( .B0(n60), .B1(n156), .A0N(n60), .A1N(n156), .Y(SUM[6]) );
  AND2X4 U112 ( .A(n133), .B(n37), .Y(n171) );
  NAND2X2 U113 ( .A(B[12]), .B(A[12]), .Y(n33) );
  NOR2X8 U114 ( .A(n163), .B(n164), .Y(n170) );
  XOR2X4 U115 ( .A(n31), .B(n157), .Y(SUM[13]) );
  OAI21X4 U116 ( .A0(n171), .A1(n32), .B0(n33), .Y(n31) );
  OR2X4 U117 ( .A(B[10]), .B(A[10]), .Y(n148) );
  XNOR2X4 U119 ( .A(n17), .B(n2), .Y(SUM[16]) );
  OAI21X2 U120 ( .A0(n170), .A1(n145), .B0(n144), .Y(n17) );
  OR2X4 U121 ( .A(n29), .B(n32), .Y(n166) );
  NOR2X1 U122 ( .A(B[6]), .B(A[6]), .Y(n58) );
  INVX3 U123 ( .A(n42), .Y(n179) );
  INVX3 U124 ( .A(n36), .Y(n162) );
  CLKBUFX3 U126 ( .A(n166), .Y(n167) );
  NOR2X2 U127 ( .A(B[8]), .B(A[8]), .Y(n50) );
  NAND2X1 U128 ( .A(B[8]), .B(A[8]), .Y(n51) );
  NAND2X1 U129 ( .A(A[10]), .B(B[10]), .Y(n42) );
  INVX3 U130 ( .A(n64), .Y(n180) );
  NAND2X1 U134 ( .A(B[6]), .B(A[6]), .Y(n59) );
  NOR2X1 U136 ( .A(B[11]), .B(A[11]), .Y(n36) );
  OR2X2 U137 ( .A(B[9]), .B(A[9]), .Y(n149) );
  CLKBUFX2 U139 ( .A(n49), .Y(n172) );
  AND2X2 U140 ( .A(n177), .B(n30), .Y(n157) );
  NOR2X1 U141 ( .A(n141), .B(n179), .Y(n158) );
  NOR2X6 U142 ( .A(n160), .B(n159), .Y(n141) );
  AOI21X4 U144 ( .A0(n49), .A1(n149), .B0(n161), .Y(n160) );
  CLKINVX6 U145 ( .A(n148), .Y(n159) );
  OAI21X4 U146 ( .A0(n141), .A1(n179), .B0(n162), .Y(n133) );
  NAND2X1 U147 ( .A(B[13]), .B(A[13]), .Y(n30) );
  NOR2X6 U150 ( .A(n133), .B(n167), .Y(n163) );
  NAND2X4 U151 ( .A(n165), .B(n168), .Y(n164) );
  INVX1 U152 ( .A(n22), .Y(n169) );
  XOR2X4 U153 ( .A(n24), .B(n136), .Y(SUM[15]) );
  NAND2X4 U155 ( .A(n142), .B(n51), .Y(n49) );
  INVX3 U157 ( .A(n67), .Y(n175) );
  NOR2X4 U158 ( .A(B[13]), .B(A[13]), .Y(n29) );
  INVX3 U159 ( .A(n56), .Y(n174) );
  NAND2X2 U162 ( .A(B[7]), .B(A[7]), .Y(n56) );
  NAND2X2 U163 ( .A(B[9]), .B(A[9]), .Y(n48) );
  NAND2X1 U167 ( .A(n147), .B(n56), .Y(n11) );
  INVX1 U168 ( .A(n32), .Y(n178) );
  INVX1 U170 ( .A(n25), .Y(n181) );
  XNOR2X1 U173 ( .A(n8), .B(n173), .Y(SUM[10]) );
  OAI2BB1X1 U174 ( .A0N(n149), .A1N(n172), .B0(n48), .Y(n173) );
  INVX1 U175 ( .A(n29), .Y(n177) );
  NAND2X1 U176 ( .A(n151), .B(n16), .Y(n2) );
  OR2X4 U179 ( .A(B[7]), .B(A[7]), .Y(n147) );
  OR2X1 U180 ( .A(B[14]), .B(A[16]), .Y(n151) );
  NAND2X1 U181 ( .A(B[14]), .B(A[16]), .Y(n16) );
endmodule


module MBF_DW01_sub_29 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   n9, n10, n11, n12, n13, n14, n16, n24, n29, n33, n36, n41, n42, n48,
         n49, n53, n55, n58, n62, n71, n73, n74, n82, n83, n84, n85, n86, n94,
         n99, n101, n105, n106, n107, n108, n109, n113, n114, \A[0] , \A[1] ,
         n196, n202, n203, n205, n206, n207, n208, n209, n210, n211, n50, n6,
         n43, n5, n44, n45, n63, n7, n65, n30, n4, n32, n72, n8, n19, n3, n201,
         n212, n18, n25, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259;
  assign DIFF[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign DIFF[1] = \A[1] ;
  assign \A[1]  = A[1];

  NAND2X1 U286 ( .A(n246), .B(A[3]), .Y(n113) );
  NAND2X2 U225 ( .A(n255), .B(A[8]), .Y(n86) );
  NOR2X1 U207 ( .A(A[13]), .B(n240), .Y(n48) );
  OR2X1 U200 ( .A(A[15]), .B(n240), .Y(n211) );
  XNOR2X1 U232 ( .A(n84), .B(n10), .Y(DIFF[9]) );
  XNOR2X1 U291 ( .A(n243), .B(n13), .Y(DIFF[6]) );
  XOR2X1 U251 ( .A(n16), .B(n114), .Y(DIFF[3]) );
  OR2X4 U284 ( .A(n248), .B(A[5]), .Y(n207) );
  NAND2X1 U285 ( .A(A[11]), .B(n240), .Y(n71) );
  NAND2X1 U238 ( .A(A[12]), .B(n240), .Y(n62) );
  NAND2X1 U282 ( .A(A[13]), .B(n240), .Y(n49) );
  NOR2X1 U208 ( .A(A[14]), .B(n240), .Y(n41) );
  NAND2X1 U258 ( .A(A[14]), .B(n240), .Y(n42) );
  NAND2X1 U257 ( .A(A[15]), .B(n240), .Y(n29) );
  NAND2X1 U214 ( .A(n33), .B(n211), .Y(n24) );
  NAND2X1 U244 ( .A(n250), .B(n74), .Y(n9) );
  XOR2X1 U189 ( .A(n11), .B(n196), .Y(DIFF[8]) );
  XNOR2X1 U248 ( .A(n202), .B(n12), .Y(DIFF[7]) );
  NAND2X1 U290 ( .A(n205), .B(n99), .Y(n13) );
  NAND2X1 U254 ( .A(n207), .B(n105), .Y(n14) );
  XNOR2X1 U253 ( .A(n14), .B(n106), .Y(DIFF[5]) );
  NAND2X1 U252 ( .A(n208), .B(n113), .Y(n16) );
  AOI21X4 U227 ( .A0(n207), .A1(n106), .B0(n247), .Y(n101) );
  NAND2X2 U288 ( .A(n242), .B(A[6]), .Y(n99) );
  NOR2X4 U166 ( .A(n251), .B(A[10]), .Y(n73) );
  OR2X2 U242 ( .A(A[12]), .B(n240), .Y(n209) );
  NAND2X2 U256 ( .A(n248), .B(A[5]), .Y(n105) );
  NAND2X1 U277 ( .A(n254), .B(n86), .Y(n11) );
  NAND2X2 U236 ( .A(n210), .B(n209), .Y(n55) );
  NOR2X2 U195 ( .A(n203), .B(n55), .Y(n33) );
  OR2X2 U255 ( .A(A[11]), .B(n240), .Y(n210) );
  NOR2X2 U165 ( .A(n73), .B(n55), .Y(n53) );
  XNOR2XL U260 ( .A(n239), .B(A[2]), .Y(DIFF[2]) );
  NAND2X1 U245 ( .A(n259), .B(n49), .Y(n6) );
  NAND2X1 U269 ( .A(n236), .B(n42), .Y(n5) );
  NAND2X1 U204 ( .A(n53), .B(n259), .Y(n44) );
  NAND2X1 U266 ( .A(n209), .B(n62), .Y(n7) );
  AOI21X1 U267 ( .A0(n249), .A1(n210), .B0(n258), .Y(n65) );
  NAND2X1 U213 ( .A(n211), .B(n29), .Y(n4) );
  AOI21X1 U223 ( .A0(n249), .A1(n33), .B0(n36), .Y(n32) );
  NAND2X1 U265 ( .A(n210), .B(n71), .Y(n8) );
  NAND2X4 U181 ( .A(n251), .B(A[10]), .Y(n74) );
  NAND2X1 U280 ( .A(n212), .B(n18), .Y(n3) );
  OR2X1 U259 ( .A(A[16]), .B(n240), .Y(n212) );
  NAND2X1 U281 ( .A(A[16]), .B(n240), .Y(n18) );
  AOI21X2 U163 ( .A0(n258), .A1(n209), .B0(n226), .Y(n58) );
  OR2X2 U164 ( .A(n48), .B(n41), .Y(n203) );
  NOR2X2 U167 ( .A(n237), .B(n48), .Y(n229) );
  OA21X2 U168 ( .A0(n74), .A1(n55), .B0(n58), .Y(n237) );
  NAND2BX1 U169 ( .AN(n107), .B(n108), .Y(n218) );
  AOI2BB2X1 U170 ( .B0(n109), .B1(n218), .A0N(n109), .A1N(n218), .Y(DIFF[4])
         );
  NAND2X2 U171 ( .A(n45), .B(n224), .Y(n43) );
  NAND2BX4 U172 ( .AN(n44), .B(n234), .Y(n224) );
  NAND2X2 U173 ( .A(n253), .B(A[9]), .Y(n83) );
  CLKINVX3 U174 ( .A(B[6]), .Y(n242) );
  OAI2BB1X4 U175 ( .A0N(n241), .A1N(n206), .B0(n94), .Y(n231) );
  INVX1 U176 ( .A(n85), .Y(n254) );
  NAND2BX2 U177 ( .AN(n85), .B(n252), .Y(n232) );
  NOR2X2 U178 ( .A(n255), .B(A[8]), .Y(n85) );
  OR2X4 U179 ( .A(A[6]), .B(n242), .Y(n205) );
  NAND2X2 U180 ( .A(n205), .B(n206), .Y(n230) );
  INVX2 U182 ( .A(B[7]), .Y(n256) );
  XNOR2X4 U183 ( .A(n19), .B(n3), .Y(DIFF[16]) );
  OAI2BB1X4 U184 ( .A0N(n234), .A1N(n221), .B0(n201), .Y(n19) );
  NAND2XL U185 ( .A(n206), .B(n94), .Y(n12) );
  CLKINVX1 U186 ( .A(n62), .Y(n226) );
  INVX3 U187 ( .A(B[9]), .Y(n253) );
  INVX3 U188 ( .A(B[8]), .Y(n255) );
  NAND2X1 U190 ( .A(n256), .B(A[7]), .Y(n94) );
  OR2X4 U191 ( .A(n256), .B(A[7]), .Y(n206) );
  CLKINVX1 U192 ( .A(n101), .Y(n243) );
  NOR2X1 U193 ( .A(n229), .B(n235), .Y(n45) );
  OAI21X1 U194 ( .A0(n58), .A1(n203), .B0(n227), .Y(n36) );
  XNOR2X1 U196 ( .A(n234), .B(n9), .Y(DIFF[10]) );
  NAND2XL U197 ( .A(n252), .B(n83), .Y(n10) );
  INVX3 U198 ( .A(n82), .Y(n252) );
  NOR2X2 U199 ( .A(n239), .B(A[2]), .Y(n114) );
  OA21X2 U201 ( .A0(n74), .A1(n24), .B0(n25), .Y(n201) );
  CLKINVX8 U202 ( .A(B[12]), .Y(n240) );
  INVX3 U203 ( .A(B[4]), .Y(n257) );
  OAI21X4 U205 ( .A0(n109), .A1(n107), .B0(n108), .Y(n106) );
  AOI21X4 U206 ( .A0(n208), .A1(n244), .B0(n245), .Y(n109) );
  NOR2X2 U209 ( .A(n257), .B(A[4]), .Y(n107) );
  INVX1 U210 ( .A(n105), .Y(n247) );
  CLKINVX1 U211 ( .A(n73), .Y(n250) );
  OA21XL U212 ( .A0(n41), .A1(n49), .B0(n42), .Y(n227) );
  OR2X1 U215 ( .A(n246), .B(A[3]), .Y(n208) );
  CLKINVX1 U216 ( .A(n114), .Y(n244) );
  CLKINVX1 U217 ( .A(n113), .Y(n245) );
  NAND2X1 U218 ( .A(n257), .B(A[4]), .Y(n108) );
  AO21X1 U219 ( .A0(n243), .A1(n205), .B0(n241), .Y(n202) );
  CLKINVX1 U220 ( .A(n73), .Y(n225) );
  AND2X2 U221 ( .A(n250), .B(n210), .Y(n219) );
  AND2X2 U222 ( .A(n250), .B(n33), .Y(n220) );
  NOR2X1 U224 ( .A(n73), .B(n24), .Y(n221) );
  INVX12 U226 ( .A(n222), .Y(n234) );
  OA21X4 U228 ( .A0(n196), .A1(n232), .B0(n233), .Y(n222) );
  NAND2X4 U229 ( .A(n223), .B(n237), .Y(n50) );
  NAND2BX4 U230 ( .AN(n238), .B(n234), .Y(n223) );
  OAI2BB1X4 U231 ( .A0N(n234), .A1N(n219), .B0(n65), .Y(n63) );
  OAI2BB1X4 U233 ( .A0N(n234), .A1N(n220), .B0(n32), .Y(n30) );
  OAI2BB1X4 U234 ( .A0N(n225), .A1N(n234), .B0(n74), .Y(n72) );
  XNOR2X4 U235 ( .A(n72), .B(n8), .Y(DIFF[11]) );
  XNOR2X4 U237 ( .A(n30), .B(n4), .Y(DIFF[15]) );
  XNOR2X4 U239 ( .A(n63), .B(n7), .Y(DIFF[12]) );
  XNOR2X4 U240 ( .A(n50), .B(n6), .Y(DIFF[13]) );
  INVX1 U241 ( .A(n29), .Y(n228) );
  AOI21X2 U243 ( .A0(n36), .A1(n211), .B0(n228), .Y(n25) );
  XNOR2X4 U246 ( .A(n43), .B(n5), .Y(DIFF[14]) );
  AOI2BB1X4 U247 ( .A0N(n230), .A1N(n101), .B0(n231), .Y(n196) );
  OA21X4 U249 ( .A0(n86), .A1(n82), .B0(n83), .Y(n233) );
  INVX1 U250 ( .A(n49), .Y(n235) );
  INVX1 U261 ( .A(n41), .Y(n236) );
  INVX1 U262 ( .A(n53), .Y(n238) );
  INVX1 U263 ( .A(B[2]), .Y(n239) );
  INVX1 U264 ( .A(n48), .Y(n259) );
  CLKINVX1 U268 ( .A(n71), .Y(n258) );
  INVX3 U270 ( .A(n99), .Y(n241) );
  INVX4 U271 ( .A(B[10]), .Y(n251) );
  CLKINVX1 U272 ( .A(n74), .Y(n249) );
  NOR2X4 U273 ( .A(n253), .B(A[9]), .Y(n82) );
  OAI21X1 U274 ( .A0(n196), .A1(n85), .B0(n86), .Y(n84) );
  INVX3 U275 ( .A(B[3]), .Y(n246) );
  INVX3 U276 ( .A(B[5]), .Y(n248) );
endmodule


module MBF_DW01_sub_27 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   n3, n5, n7, n9, n10, n11, n12, n13, n15, n17, n18, n23, n28, n32, n35,
         n36, n37, n38, n39, n40, n43, n44, n48, n57, n58, n59, n60, n68, n69,
         n70, n71, n72, n74, n80, n85, n87, n91, n92, n93, n94, n95, n99, n100,
         \A[0] , \A[1] , \A[2] , n184, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n180, n51, n50, n186, n66, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249;
  assign DIFF[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign DIFF[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign DIFF[2] = \A[2] ;
  assign \A[2]  = A[2];

  NAND2X1 U260 ( .A(n234), .B(A[4]), .Y(n99) );
  NAND2X2 U259 ( .A(n235), .B(A[6]), .Y(n91) );
  OR2X1 U239 ( .A(A[15]), .B(n226), .Y(n190) );
  OR2X1 U243 ( .A(A[16]), .B(n226), .Y(n196) );
  XNOR2X1 U178 ( .A(n70), .B(n9), .Y(DIFF[10]) );
  XOR2X1 U184 ( .A(n10), .B(n227), .Y(DIFF[9]) );
  XNOR2X1 U232 ( .A(n231), .B(n12), .Y(DIFF[7]) );
  XOR2X1 U236 ( .A(n15), .B(n100), .Y(DIFF[4]) );
  OR2X4 U150 ( .A(n230), .B(A[7]), .Y(n192) );
  NAND2X1 U213 ( .A(A[12]), .B(n226), .Y(n57) );
  NAND2X1 U242 ( .A(A[15]), .B(n226), .Y(n28) );
  NAND2X1 U212 ( .A(n189), .B(n57), .Y(n7) );
  NAND2X1 U196 ( .A(n32), .B(n190), .Y(n23) );
  NAND2X1 U261 ( .A(A[16]), .B(n226), .Y(n17) );
  NAND2X1 U262 ( .A(n196), .B(n17), .Y(n3) );
  NAND2X1 U250 ( .A(n239), .B(n69), .Y(n9) );
  AOI21X1 U152 ( .A0(n237), .A1(n246), .B0(n247), .Y(n40) );
  NAND2X1 U215 ( .A(n241), .B(n72), .Y(n10) );
  NAND2X1 U253 ( .A(n191), .B(n80), .Y(n11) );
  NAND2X1 U233 ( .A(n192), .B(n85), .Y(n12) );
  NAND2X1 U235 ( .A(n193), .B(n91), .Y(n13) );
  XNOR2X1 U234 ( .A(n13), .B(n92), .Y(DIFF[6]) );
  NAND2X1 U237 ( .A(n194), .B(n99), .Y(n15) );
  NAND2X2 U175 ( .A(n230), .B(A[7]), .Y(n85) );
  NAND2X2 U218 ( .A(n240), .B(A[10]), .Y(n69) );
  XNOR2XL U244 ( .A(n225), .B(A[3]), .Y(DIFF[3]) );
  OR2X2 U238 ( .A(A[12]), .B(n226), .Y(n189) );
  AND2X1 U177 ( .A(n195), .B(n48), .Y(n180) );
  AOI21X1 U204 ( .A0(n237), .A1(n189), .B0(n248), .Y(n51) );
  NAND2X1 U221 ( .A(n236), .B(n189), .Y(n50) );
  NAND2X2 U225 ( .A(n243), .B(A[8]), .Y(n80) );
  XNOR2X2 U220 ( .A(n18), .B(n3), .Y(DIFF[16]) );
  AOI21X1 U146 ( .A0(n195), .A1(n248), .B0(n249), .Y(n44) );
  MXI2X2 U147 ( .A(n215), .B(n216), .S0(n217), .Y(n214) );
  NOR2X1 U148 ( .A(n23), .B(n60), .Y(n203) );
  INVXL U149 ( .A(n28), .Y(n204) );
  AOI211X1 U151 ( .A0(n190), .A1(n35), .B0(n203), .C0(n204), .Y(n184) );
  NAND2BX1 U153 ( .AN(n219), .B(n216), .Y(n215) );
  NAND2X1 U154 ( .A(n60), .B(n236), .Y(n205) );
  AOI2BB2X1 U155 ( .B0(n208), .B1(n205), .A0N(n208), .A1N(n205), .Y(DIFF[11])
         );
  NAND2BX1 U156 ( .AN(n93), .B(n94), .Y(n206) );
  AOI2BB2X1 U157 ( .B0(n95), .B1(n206), .A0N(n95), .A1N(n206), .Y(DIFF[5]) );
  XNOR2X2 U158 ( .A(n187), .B(n11), .Y(DIFF[8]) );
  NAND2X4 U159 ( .A(n238), .B(A[11]), .Y(n60) );
  OAI21X4 U160 ( .A0(n228), .A1(n59), .B0(n60), .Y(n58) );
  XNOR2X4 U161 ( .A(n58), .B(n7), .Y(DIFF[12]) );
  CLKINVX3 U162 ( .A(B[7]), .Y(n230) );
  CLKINVX6 U163 ( .A(B[11]), .Y(n238) );
  INVX3 U164 ( .A(n60), .Y(n237) );
  NAND2X2 U165 ( .A(n210), .B(A[5]), .Y(n94) );
  CLKBUFX8 U166 ( .A(n244), .Y(n210) );
  CLKINVX1 U167 ( .A(n186), .Y(n228) );
  NAND2X2 U168 ( .A(n242), .B(A[9]), .Y(n72) );
  INVX3 U169 ( .A(B[9]), .Y(n242) );
  AOI211X2 U170 ( .A0(n208), .A1(n212), .B0(n213), .C0(n214), .Y(DIFF[15]) );
  NOR2X6 U171 ( .A(n238), .B(A[11]), .Y(n59) );
  OAI2BB1X2 U172 ( .A0N(n32), .A1N(n237), .B0(n221), .Y(n217) );
  OAI21X4 U173 ( .A0(n208), .A1(n39), .B0(n40), .Y(n38) );
  INVX12 U174 ( .A(n186), .Y(n208) );
  AND2X2 U176 ( .A(n236), .B(n32), .Y(n219) );
  INVX3 U179 ( .A(B[8]), .Y(n243) );
  INVX3 U180 ( .A(B[10]), .Y(n240) );
  OR2X1 U181 ( .A(n234), .B(A[4]), .Y(n194) );
  INVX3 U182 ( .A(n85), .Y(n229) );
  CLKINVX1 U183 ( .A(n87), .Y(n231) );
  NOR2X1 U185 ( .A(n217), .B(n218), .Y(n212) );
  NOR2X1 U186 ( .A(n208), .B(n220), .Y(n213) );
  XNOR2X1 U187 ( .A(n38), .B(n5), .Y(DIFF[14]) );
  CLKINVX4 U188 ( .A(n80), .Y(n207) );
  AOI21X4 U189 ( .A0(n194), .A1(n232), .B0(n233), .Y(n95) );
  CLKINVX1 U190 ( .A(n74), .Y(n227) );
  OAI2BB1X4 U191 ( .A0N(n66), .A1N(n74), .B0(n209), .Y(n186) );
  OA21X4 U192 ( .A0(n68), .A1(n72), .B0(n69), .Y(n209) );
  NAND2X2 U193 ( .A(n189), .B(n195), .Y(n43) );
  CLKINVX1 U194 ( .A(n100), .Y(n232) );
  CLKINVX2 U195 ( .A(B[6]), .Y(n235) );
  OR2X6 U197 ( .A(n243), .B(A[8]), .Y(n191) );
  INVX3 U198 ( .A(B[5]), .Y(n244) );
  OR2X4 U199 ( .A(n235), .B(A[6]), .Y(n193) );
  OAI21X2 U200 ( .A0(n44), .A1(n36), .B0(n37), .Y(n35) );
  CLKINVX1 U201 ( .A(n35), .Y(n221) );
  OAI21X4 U202 ( .A0(n95), .A1(n93), .B0(n94), .Y(n92) );
  NOR2X2 U203 ( .A(n210), .B(A[5]), .Y(n93) );
  OR2XL U205 ( .A(n59), .B(n23), .Y(n188) );
  XOR2X4 U206 ( .A(n211), .B(n180), .Y(DIFF[13]) );
  OAI21X4 U207 ( .A0(n208), .A1(n50), .B0(n51), .Y(n211) );
  CLKINVX4 U208 ( .A(n91), .Y(n222) );
  NOR2X2 U209 ( .A(n225), .B(A[3]), .Y(n100) );
  OR2X2 U210 ( .A(A[13]), .B(n226), .Y(n195) );
  NOR2X2 U211 ( .A(n43), .B(n36), .Y(n32) );
  NAND2X1 U214 ( .A(n236), .B(n246), .Y(n39) );
  NOR2X2 U216 ( .A(n242), .B(A[9]), .Y(n71) );
  CLKINVX1 U217 ( .A(n218), .Y(n216) );
  NAND2X1 U219 ( .A(n219), .B(n218), .Y(n220) );
  AND2X2 U222 ( .A(n190), .B(n28), .Y(n218) );
  AO21X1 U223 ( .A0(n231), .A1(n192), .B0(n229), .Y(n187) );
  INVX6 U224 ( .A(B[13]), .Y(n226) );
  AOI21X4 U226 ( .A0(n92), .A1(n193), .B0(n222), .Y(n87) );
  OAI21X4 U227 ( .A0(n223), .A1(n87), .B0(n224), .Y(n74) );
  AOI21X4 U228 ( .A0(n191), .A1(n229), .B0(n207), .Y(n224) );
  NAND2X4 U229 ( .A(n191), .B(n192), .Y(n223) );
  NOR2X2 U230 ( .A(n68), .B(n71), .Y(n66) );
  INVX1 U231 ( .A(B[3]), .Y(n225) );
  OAI21X2 U240 ( .A0(n208), .A1(n188), .B0(n184), .Y(n18) );
  INVX4 U241 ( .A(n59), .Y(n236) );
  NOR2X1 U245 ( .A(A[14]), .B(n226), .Y(n36) );
  OAI21X2 U246 ( .A0(n227), .A1(n71), .B0(n72), .Y(n70) );
  CLKINVX1 U247 ( .A(n43), .Y(n246) );
  CLKINVX1 U248 ( .A(n99), .Y(n233) );
  CLKINVX1 U249 ( .A(n71), .Y(n241) );
  CLKINVX1 U251 ( .A(n68), .Y(n239) );
  CLKINVX1 U252 ( .A(n57), .Y(n248) );
  NOR2X4 U254 ( .A(n240), .B(A[10]), .Y(n68) );
  INVX1 U255 ( .A(n44), .Y(n247) );
  NAND2X1 U256 ( .A(A[14]), .B(n226), .Y(n37) );
  INVX1 U257 ( .A(n48), .Y(n249) );
  NAND2X1 U258 ( .A(A[13]), .B(n226), .Y(n48) );
  INVX3 U263 ( .A(B[4]), .Y(n234) );
  INVX1 U264 ( .A(n36), .Y(n245) );
  NAND2X1 U265 ( .A(n245), .B(n37), .Y(n5) );
endmodule


module MBF_DW01_sub_28 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   n7, n9, n10, n11, n12, n13, n15, n23, n28, n32, n35, n36, n37, n43,
         n44, n48, n57, n58, n59, n60, n68, n69, n70, n71, n72, n74, n80, n85,
         n87, n91, n92, n93, n94, n95, n99, n100, \A[0] , \A[1] , \A[2] , n186,
         n188, n189, n190, n191, n192, n193, n194, n29, n4, n182, n31, n30,
         n185, n66, n67, n49, n6, n180, n51, n50, n38, n5, n181, n40, n39,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239;
  assign DIFF[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign DIFF[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign DIFF[2] = \A[2] ;
  assign \A[2]  = A[2];

  NAND2X1 U169 ( .A(n227), .B(A[4]), .Y(n99) );
  OR2X1 U237 ( .A(A[15]), .B(n219), .Y(n188) );
  XOR2X1 U228 ( .A(n10), .B(n220), .Y(DIFF[9]) );
  XNOR2X1 U231 ( .A(n224), .B(n12), .Y(DIFF[7]) );
  XOR2X1 U235 ( .A(n15), .B(n100), .Y(DIFF[4]) );
  OR2X4 U175 ( .A(n235), .B(A[8]), .Y(n190) );
  NAND2X1 U220 ( .A(A[12]), .B(n219), .Y(n57) );
  NAND2X1 U257 ( .A(A[13]), .B(n219), .Y(n48) );
  AOI21X1 U217 ( .A0(n191), .A1(n239), .B0(n237), .Y(n44) );
  NAND2X1 U260 ( .A(A[14]), .B(n219), .Y(n37) );
  NAND2X1 U264 ( .A(A[15]), .B(n219), .Y(n28) );
  NAND2X1 U244 ( .A(n189), .B(n57), .Y(n7) );
  NAND2X1 U246 ( .A(n231), .B(n69), .Y(n9) );
  NAND2X1 U173 ( .A(n233), .B(n72), .Y(n10) );
  XNOR2X1 U229 ( .A(n186), .B(n11), .Y(DIFF[8]) );
  NAND2X1 U232 ( .A(n192), .B(n85), .Y(n12) );
  NAND2X1 U234 ( .A(n193), .B(n91), .Y(n13) );
  XNOR2X1 U233 ( .A(n13), .B(n92), .Y(DIFF[6]) );
  NAND2X1 U236 ( .A(n194), .B(n99), .Y(n15) );
  NAND2X2 U256 ( .A(n223), .B(A[7]), .Y(n85) );
  NAND2X2 U215 ( .A(n232), .B(A[10]), .Y(n69) );
  NOR2X1 U162 ( .A(A[14]), .B(n219), .Y(n36) );
  OR2X2 U238 ( .A(A[13]), .B(n219), .Y(n191) );
  NAND2X1 U190 ( .A(n189), .B(n191), .Y(n43) );
  OAI21X4 U204 ( .A0(n95), .A1(n93), .B0(n94), .Y(n92) );
  OR2X2 U223 ( .A(A[12]), .B(n219), .Y(n189) );
  XNOR2XL U239 ( .A(n218), .B(A[3]), .Y(DIFF[3]) );
  NAND2X1 U197 ( .A(n188), .B(n28), .Y(n4) );
  OR2X4 U200 ( .A(n221), .B(n30), .Y(n182) );
  AOI21X1 U187 ( .A0(n230), .A1(n32), .B0(n35), .Y(n31) );
  NAND2X1 U210 ( .A(n229), .B(n32), .Y(n30) );
  AO21X4 U214 ( .A0(n66), .A1(n74), .B0(n67), .Y(n185) );
  OAI21X2 U185 ( .A0(n68), .A1(n72), .B0(n69), .Y(n67) );
  NAND2X1 U245 ( .A(n191), .B(n48), .Y(n6) );
  OR2X4 U205 ( .A(n221), .B(n50), .Y(n180) );
  AOI21X1 U202 ( .A0(n230), .A1(n189), .B0(n239), .Y(n51) );
  NAND2X1 U206 ( .A(n229), .B(n189), .Y(n50) );
  NAND2X1 U261 ( .A(n207), .B(n37), .Y(n5) );
  OR2X4 U198 ( .A(n221), .B(n39), .Y(n181) );
  AOI21X1 U240 ( .A0(n230), .A1(n238), .B0(n206), .Y(n40) );
  NAND2X1 U192 ( .A(n229), .B(n238), .Y(n39) );
  NAND2X2 U156 ( .A(n235), .B(A[8]), .Y(n80) );
  XNOR2X2 U157 ( .A(n58), .B(n7), .Y(DIFF[12]) );
  INVX3 U146 ( .A(B[10]), .Y(n232) );
  NAND2X2 U147 ( .A(n192), .B(n190), .Y(n208) );
  INVX3 U148 ( .A(B[6]), .Y(n228) );
  NAND2X2 U149 ( .A(n228), .B(A[6]), .Y(n91) );
  XNOR2X1 U150 ( .A(n70), .B(n9), .Y(DIFF[10]) );
  NAND2BX2 U151 ( .AN(B[11]), .B(A[11]), .Y(n60) );
  NAND2X1 U152 ( .A(n60), .B(n229), .Y(n203) );
  AOI2BB2X1 U153 ( .B0(n221), .B1(n203), .A0N(n221), .A1N(n203), .Y(DIFF[11])
         );
  NAND2BX1 U154 ( .AN(n93), .B(n94), .Y(n204) );
  AOI2BB2X1 U155 ( .B0(n95), .B1(n204), .A0N(n95), .A1N(n204), .Y(DIFF[5]) );
  AOI21X4 U158 ( .A0(n194), .A1(n225), .B0(n226), .Y(n95) );
  NOR2BX2 U159 ( .AN(B[11]), .B(A[11]), .Y(n59) );
  OR2X4 U160 ( .A(n223), .B(A[7]), .Y(n192) );
  CLKINVX3 U161 ( .A(B[7]), .Y(n223) );
  AOI21X4 U163 ( .A0(n190), .A1(n222), .B0(n210), .Y(n209) );
  AO21X2 U164 ( .A0(n224), .A1(n192), .B0(n222), .Y(n186) );
  INVX1 U165 ( .A(B[5]), .Y(n236) );
  OAI21X2 U166 ( .A0(n220), .A1(n71), .B0(n72), .Y(n70) );
  INVX3 U167 ( .A(n57), .Y(n239) );
  INVX3 U168 ( .A(n59), .Y(n229) );
  NOR2X4 U170 ( .A(n43), .B(n36), .Y(n32) );
  NOR2X2 U171 ( .A(n68), .B(n71), .Y(n66) );
  OAI21X2 U172 ( .A0(n221), .A1(n59), .B0(n60), .Y(n58) );
  XNOR2X4 U174 ( .A(n38), .B(n5), .Y(DIFF[14]) );
  NAND2X6 U176 ( .A(n181), .B(n40), .Y(n38) );
  OAI21X4 U177 ( .A0(n221), .A1(n213), .B0(n214), .Y(n211) );
  INVX8 U178 ( .A(n185), .Y(n221) );
  NOR2X4 U179 ( .A(n215), .B(n216), .Y(n214) );
  CLKINVX1 U180 ( .A(n91), .Y(n205) );
  NOR2X2 U181 ( .A(n236), .B(A[5]), .Y(n93) );
  CLKINVX1 U182 ( .A(n87), .Y(n224) );
  XOR2X1 U183 ( .A(n211), .B(n212), .Y(DIFF[16]) );
  NAND2BX1 U184 ( .AN(n23), .B(n229), .Y(n213) );
  NAND2XL U186 ( .A(n190), .B(n80), .Y(n11) );
  CLKINVX2 U188 ( .A(B[9]), .Y(n234) );
  NAND2X4 U189 ( .A(n180), .B(n51), .Y(n49) );
  NAND2X4 U191 ( .A(n182), .B(n31), .Y(n29) );
  OAI21X2 U193 ( .A0(n44), .A1(n36), .B0(n37), .Y(n35) );
  INVX3 U194 ( .A(n60), .Y(n230) );
  NOR2X4 U195 ( .A(n234), .B(A[9]), .Y(n71) );
  NAND2X2 U196 ( .A(n32), .B(n188), .Y(n23) );
  NOR2X2 U199 ( .A(n218), .B(A[3]), .Y(n100) );
  NAND2X2 U201 ( .A(n236), .B(A[5]), .Y(n94) );
  OAI21X2 U203 ( .A0(n23), .A1(n60), .B0(n28), .Y(n215) );
  INVX1 U207 ( .A(B[3]), .Y(n218) );
  OR2X1 U208 ( .A(n227), .B(A[4]), .Y(n194) );
  CLKINVX6 U209 ( .A(B[13]), .Y(n219) );
  NOR2BX2 U211 ( .AN(n35), .B(n217), .Y(n216) );
  CLKINVX1 U212 ( .A(n188), .Y(n217) );
  INVX3 U213 ( .A(n80), .Y(n210) );
  CLKINVX1 U216 ( .A(n100), .Y(n225) );
  OR2X2 U218 ( .A(n228), .B(A[6]), .Y(n193) );
  INVX1 U219 ( .A(n74), .Y(n220) );
  XOR2X1 U221 ( .A(n219), .B(A[16]), .Y(n212) );
  XNOR2X4 U222 ( .A(n49), .B(n6), .Y(DIFF[13]) );
  XNOR2X4 U224 ( .A(n29), .B(n4), .Y(DIFF[15]) );
  AOI21X4 U225 ( .A0(n92), .A1(n193), .B0(n205), .Y(n87) );
  INVX1 U226 ( .A(n44), .Y(n206) );
  INVX1 U227 ( .A(n36), .Y(n207) );
  OAI21X4 U230 ( .A0(n87), .A1(n208), .B0(n209), .Y(n74) );
  CLKINVX1 U241 ( .A(n43), .Y(n238) );
  CLKINVX1 U242 ( .A(n99), .Y(n226) );
  INVX3 U243 ( .A(n85), .Y(n222) );
  CLKINVX1 U247 ( .A(n71), .Y(n233) );
  CLKINVX1 U248 ( .A(n68), .Y(n231) );
  NOR2X4 U249 ( .A(n232), .B(A[10]), .Y(n68) );
  INVX1 U250 ( .A(n48), .Y(n237) );
  NAND2X2 U251 ( .A(n234), .B(A[9]), .Y(n72) );
  INVX3 U252 ( .A(B[4]), .Y(n227) );
  INVX3 U253 ( .A(B[8]), .Y(n235) );
endmodule


module MBF_DW01_sub_30 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   n9, n10, n11, n12, n13, n14, n15, n23, n28, n29, n30, n31, n32, n35,
         n36, n37, n43, n44, n48, n57, n59, n60, n68, n69, n70, n71, n72, n74,
         n80, n85, n87, n91, n92, n93, n94, n95, n99, n100, \A[0] , \A[1] ,
         \A[2] , n180, n186, n189, n193, n194, n195, n196, n197, n198, n199,
         n58, n185, n190, n66, n67, n75, n76, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257;
  assign DIFF[0] = \A[0] ;
  assign \A[0]  = A[0];
  assign DIFF[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign DIFF[2] = \A[2] ;
  assign \A[2]  = A[2];

  NAND2X1 U256 ( .A(n242), .B(A[4]), .Y(n99) );
  NOR2X2 U176 ( .A(n254), .B(A[5]), .Y(n93) );
  OR2X1 U237 ( .A(A[15]), .B(n234), .Y(n199) );
  XNOR2X1 U228 ( .A(n239), .B(n12), .Y(DIFF[7]) );
  XOR2X1 U233 ( .A(n15), .B(n100), .Y(DIFF[4]) );
  NAND2X2 U153 ( .A(n254), .B(A[5]), .Y(n94) );
  OR2X4 U151 ( .A(n238), .B(A[7]), .Y(n196) );
  NAND2X1 U259 ( .A(A[12]), .B(n234), .Y(n57) );
  NAND2X1 U264 ( .A(A[13]), .B(n234), .Y(n48) );
  NAND2X1 U261 ( .A(A[14]), .B(n234), .Y(n37) );
  NAND2X1 U182 ( .A(n246), .B(n32), .Y(n30) );
  NAND2X1 U238 ( .A(A[15]), .B(n234), .Y(n28) );
  OAI21X1 U209 ( .A0(n235), .A1(n71), .B0(n72), .Y(n70) );
  NAND2X1 U249 ( .A(n248), .B(n69), .Y(n9) );
  XNOR2X1 U248 ( .A(n70), .B(n9), .Y(DIFF[10]) );
  XOR2X1 U217 ( .A(n10), .B(n235), .Y(DIFF[9]) );
  XNOR2X1 U227 ( .A(n189), .B(n11), .Y(DIFF[8]) );
  NAND2X1 U229 ( .A(n196), .B(n85), .Y(n12) );
  NAND2X1 U236 ( .A(n198), .B(n91), .Y(n13) );
  XNOR2X1 U235 ( .A(n13), .B(n92), .Y(DIFF[6]) );
  NAND2X1 U253 ( .A(n253), .B(n94), .Y(n14) );
  NAND2X1 U234 ( .A(n197), .B(n99), .Y(n15) );
  XOR2X1 U231 ( .A(n14), .B(n95), .Y(DIFF[5]) );
  AOI21X4 U219 ( .A0(n198), .A1(n180), .B0(n243), .Y(n87) );
  NAND2X2 U158 ( .A(n238), .B(A[7]), .Y(n85) );
  NAND2X2 U257 ( .A(n244), .B(A[6]), .Y(n91) );
  NOR2X1 U262 ( .A(A[14]), .B(n234), .Y(n36) );
  NAND2X2 U167 ( .A(n252), .B(A[8]), .Y(n80) );
  NAND2X4 U171 ( .A(n247), .B(A[11]), .Y(n60) );
  AOI21X4 U204 ( .A0(n197), .A1(n240), .B0(n241), .Y(n95) );
  NAND2X2 U202 ( .A(n249), .B(A[10]), .Y(n69) );
  OR2X2 U170 ( .A(A[12]), .B(n234), .Y(n194) );
  NOR2X2 U220 ( .A(n43), .B(n36), .Y(n32) );
  OAI21XL U150 ( .A0(n95), .A1(n93), .B0(n94), .Y(n92) );
  XNOR2XL U239 ( .A(n233), .B(A[3]), .Y(DIFF[3]) );
  OR2X4 U194 ( .A(n236), .B(n59), .Y(n185) );
  AO21X4 U211 ( .A0(n66), .A1(n74), .B0(n67), .Y(n190) );
  NOR2X2 U210 ( .A(n68), .B(n71), .Y(n66) );
  OAI21X4 U222 ( .A0(n87), .A1(n75), .B0(n76), .Y(n74) );
  NAND2X2 U223 ( .A(n195), .B(n196), .Y(n75) );
  AOI21X4 U195 ( .A0(n195), .A1(n237), .B0(n221), .Y(n76) );
  NAND2X1 U146 ( .A(n194), .B(n193), .Y(n43) );
  NOR2X4 U147 ( .A(n251), .B(A[9]), .Y(n71) );
  OR2X1 U148 ( .A(n212), .B(n211), .Y(n210) );
  NAND2X1 U149 ( .A(n60), .B(n246), .Y(n204) );
  AOI2BB2X1 U152 ( .B0(n236), .B1(n204), .A0N(n236), .A1N(n204), .Y(DIFF[11])
         );
  XNOR2X1 U154 ( .A(n234), .B(A[16]), .Y(n211) );
  INVX12 U155 ( .A(n190), .Y(n236) );
  OR2X2 U156 ( .A(A[13]), .B(n234), .Y(n193) );
  INVX2 U157 ( .A(B[7]), .Y(n238) );
  AOI21X1 U159 ( .A0(n245), .A1(n32), .B0(n35), .Y(n31) );
  INVX12 U160 ( .A(n60), .Y(n245) );
  OAI21X4 U161 ( .A0(n68), .A1(n72), .B0(n69), .Y(n67) );
  NAND2XL U162 ( .A(n250), .B(n72), .Y(n10) );
  NAND2X4 U163 ( .A(n251), .B(A[9]), .Y(n72) );
  INVX6 U164 ( .A(n59), .Y(n246) );
  OR2X4 U165 ( .A(n244), .B(A[6]), .Y(n198) );
  INVX2 U166 ( .A(B[6]), .Y(n244) );
  XOR2X4 U168 ( .A(n216), .B(n217), .Y(DIFF[14]) );
  OAI21X4 U169 ( .A0(n236), .A1(n218), .B0(n219), .Y(n216) );
  INVX3 U172 ( .A(B[11]), .Y(n247) );
  AND2X2 U173 ( .A(n246), .B(n194), .Y(n230) );
  CLKINVX1 U174 ( .A(n99), .Y(n241) );
  CLKINVX1 U175 ( .A(n100), .Y(n240) );
  NAND2X1 U177 ( .A(n230), .B(n229), .Y(n231) );
  OAI2BB1X2 U178 ( .A0N(n194), .A1N(n245), .B0(n232), .Y(n227) );
  OAI21X1 U179 ( .A0(n44), .A1(n36), .B0(n37), .Y(n35) );
  OR2X4 U180 ( .A(n236), .B(n30), .Y(n186) );
  AND3X4 U181 ( .A(n236), .B(n214), .C(n211), .Y(n207) );
  NOR2X2 U183 ( .A(n236), .B(n231), .Y(n223) );
  NAND2XL U184 ( .A(n195), .B(n80), .Y(n11) );
  CLKINVX8 U185 ( .A(B[13]), .Y(n234) );
  OR2X6 U186 ( .A(n252), .B(A[8]), .Y(n195) );
  CLKINVX1 U187 ( .A(B[9]), .Y(n251) );
  AOI2BB1X4 U188 ( .A0N(n23), .A1N(n60), .B0(n215), .Y(n214) );
  NAND2X2 U189 ( .A(n32), .B(n199), .Y(n23) );
  OAI2BB1X4 U190 ( .A0N(n199), .A1N(n35), .B0(n28), .Y(n215) );
  NOR2X4 U191 ( .A(n247), .B(A[11]), .Y(n59) );
  NAND2BX4 U192 ( .AN(n23), .B(n246), .Y(n212) );
  CLKINVX1 U193 ( .A(n87), .Y(n239) );
  AOI21X1 U196 ( .A0(n193), .A1(n256), .B0(n255), .Y(n44) );
  OR2X1 U197 ( .A(n242), .B(A[4]), .Y(n197) );
  INVX3 U198 ( .A(n230), .Y(n228) );
  CLKINVX1 U199 ( .A(n229), .Y(n226) );
  CLKINVX1 U200 ( .A(n256), .Y(n232) );
  AND2X2 U201 ( .A(n48), .B(n193), .Y(n229) );
  CLKINVX1 U203 ( .A(n44), .Y(n220) );
  NAND2XL U205 ( .A(n246), .B(n257), .Y(n218) );
  NAND2X1 U206 ( .A(n212), .B(n211), .Y(n213) );
  AO21X1 U207 ( .A0(n239), .A1(n196), .B0(n237), .Y(n189) );
  NOR2BX1 U208 ( .AN(n37), .B(n36), .Y(n217) );
  AOI21X1 U212 ( .A0(n245), .A1(n257), .B0(n220), .Y(n219) );
  NOR3X4 U213 ( .A(n207), .B(n208), .C(n209), .Y(DIFF[16]) );
  NOR2X2 U214 ( .A(n236), .B(n210), .Y(n209) );
  MXI2X2 U215 ( .A(n211), .B(n213), .S0(n214), .Y(n208) );
  AND2X2 U216 ( .A(n199), .B(n28), .Y(n205) );
  AND2X2 U218 ( .A(n194), .B(n57), .Y(n206) );
  NAND2X4 U221 ( .A(n186), .B(n31), .Y(n29) );
  XOR2X4 U224 ( .A(n58), .B(n206), .Y(DIFF[12]) );
  XOR2X4 U225 ( .A(n29), .B(n205), .Y(DIFF[15]) );
  NAND2X6 U226 ( .A(n185), .B(n60), .Y(n58) );
  INVX3 U230 ( .A(n80), .Y(n221) );
  AOI211X2 U232 ( .A0(n236), .A1(n222), .B0(n223), .C0(n224), .Y(DIFF[13]) );
  MXI2X4 U240 ( .A(n225), .B(n226), .S0(n227), .Y(n224) );
  NAND2X4 U241 ( .A(n228), .B(n226), .Y(n225) );
  NOR2X6 U242 ( .A(n227), .B(n229), .Y(n222) );
  OAI21X4 U243 ( .A0(n95), .A1(n93), .B0(n94), .Y(n180) );
  NOR2X2 U244 ( .A(n233), .B(A[3]), .Y(n100) );
  INVX1 U245 ( .A(B[3]), .Y(n233) );
  INVX3 U246 ( .A(n57), .Y(n256) );
  INVX3 U247 ( .A(n85), .Y(n237) );
  CLKINVX1 U250 ( .A(n71), .Y(n250) );
  INVX3 U251 ( .A(n91), .Y(n243) );
  NOR2X4 U252 ( .A(n249), .B(A[10]), .Y(n68) );
  CLKINVX1 U254 ( .A(n43), .Y(n257) );
  INVX3 U255 ( .A(B[10]), .Y(n249) );
  INVX1 U258 ( .A(n93), .Y(n253) );
  INVX1 U260 ( .A(n68), .Y(n248) );
  INVX3 U263 ( .A(n74), .Y(n235) );
  INVX1 U265 ( .A(n48), .Y(n255) );
  INVX3 U266 ( .A(B[8]), .Y(n252) );
  INVX3 U267 ( .A(B[5]), .Y(n254) );
  INVX3 U268 ( .A(B[4]), .Y(n242) );
endmodule


module MBF ( clk, reset, y_valid, z_valid, y, z );
  output [7:0] y;
  output [7:0] z;
  input clk, reset;
  output y_valid, z_valid;
  wire   N8, N9, zero, \accum_lpf[0][7] , \accum_lpf[0][6] , \accum_lpf[0][5] ,
         \accum_lpf[0][4] , \accum_lpf[0][3] , \accum_lpf[0][2] ,
         \accum_lpf[1][16] , \accum_lpf[1][15] , \accum_lpf[1][9] ,
         \accum_lpf[1][8] , \accum_lpf[1][7] , \accum_lpf[1][6] ,
         \accum_lpf[1][5] , \accum_lpf[1][4] , \accum_lpf[1][3] ,
         \accum_lpf[1][2] , \accum_lpf[1][1] , \accum_lpf[2][16] ,
         \accum_lpf[2][15] , \accum_lpf[2][14] , \accum_lpf[2][13] ,
         \accum_lpf[2][12] , \accum_lpf[2][11] , \accum_lpf[2][10] ,
         \accum_lpf[2][9] , \accum_lpf[2][8] , \accum_lpf[2][7] ,
         \accum_lpf[2][6] , \accum_lpf[2][5] , \accum_lpf[2][4] ,
         \accum_lpf[2][3] , \accum_lpf[2][2] , \accum_lpf[2][1] ,
         \accum_lpf[3][16] , \accum_lpf[3][15] , \accum_lpf[3][14] ,
         \accum_lpf[3][13] , \accum_lpf[3][12] , \accum_lpf[3][11] ,
         \accum_lpf[3][10] , \accum_lpf[3][9] , \accum_lpf[3][8] ,
         \accum_lpf[3][7] , \accum_lpf[3][6] , \accum_lpf[3][5] ,
         \accum_lpf[3][4] , \accum_lpf[3][3] , \accum_lpf[3][2] ,
         \accum_lpf[3][1] , \accum_lpf[4][16] , \accum_lpf[4][15] ,
         \accum_lpf[4][14] , \accum_lpf[4][13] , \accum_lpf[4][12] ,
         \accum_lpf[4][11] , \accum_lpf[4][10] , \accum_lpf[4][9] ,
         \accum_lpf[4][8] , \accum_lpf[4][7] , \accum_lpf[4][6] ,
         \accum_lpf[4][5] , \accum_lpf[4][4] , \accum_lpf[4][3] ,
         \accum_lpf[4][2] , \accum_lpf[4][1] , \accum_lpf[5][16] ,
         \accum_lpf[5][15] , \accum_lpf[5][14] , \accum_lpf[5][13] ,
         \accum_lpf[5][12] , \accum_lpf[5][11] , \accum_lpf[5][10] ,
         \accum_lpf[5][9] , \accum_lpf[5][8] , \accum_lpf[5][7] ,
         \accum_lpf[5][6] , \accum_lpf[5][5] , \accum_lpf[5][4] ,
         \accum_lpf[5][3] , \accum_lpf[5][2] , \accum_lpf[5][1] ,
         \accum_lpf[6][16] , \accum_lpf[6][15] , \accum_lpf[6][14] ,
         \accum_lpf[6][13] , \accum_lpf[6][12] , \accum_lpf[6][11] ,
         \accum_lpf[6][10] , \accum_lpf[6][9] , \accum_lpf[6][8] ,
         \accum_lpf[7][16] , \accum_lpf[7][15] , \accum_lpf[7][14] ,
         \accum_lpf[7][13] , \accum_lpf[7][12] , \accum_lpf[7][11] ,
         \accum_lpf[7][10] , \accum_lpf[7][9] , \accum_lpf[7][8] ,
         \accum_lpf[8][16] , \accum_lpf[8][15] , \accum_lpf[8][14] ,
         \accum_lpf[8][13] , \accum_lpf[8][12] , \accum_lpf[8][11] ,
         \accum_lpf[8][10] , \accum_lpf[8][9] , \accum_lpf[8][8] ,
         \accum_lpf[8][7] , \accum_lpf[8][6] , \accum_lpf[8][5] ,
         \accum_lpf[8][4] , \accum_lpf[8][3] , \accum_lpf[8][2] ,
         \accum_lpf[8][1] , \accum_lpf[9][16] , \accum_lpf[9][15] ,
         \accum_lpf[9][14] , \accum_lpf[9][13] , \accum_lpf[9][12] ,
         \accum_lpf[9][11] , \accum_lpf[9][10] , \accum_lpf[9][9] ,
         \accum_lpf[9][8] , \accum_lpf[9][7] , \accum_lpf[9][6] ,
         \accum_lpf[9][5] , \accum_lpf[9][4] , \accum_lpf[9][3] ,
         \accum_lpf[9][2] , \accum_lpf[9][1] , \accum_lpf[10][16] ,
         \accum_lpf[10][15] , \accum_lpf[10][14] , \accum_lpf[10][13] ,
         \accum_lpf[10][12] , \accum_lpf[10][11] , \accum_lpf[10][10] ,
         \accum_lpf[10][9] , \accum_lpf[10][8] , \accum_lpf[10][7] ,
         \accum_lpf[10][6] , \accum_lpf[10][5] , \accum_lpf[10][4] ,
         \accum_lpf[10][3] , \accum_lpf[10][2] , \accum_lpf[10][1] ,
         \accum_lpf[11][16] , \accum_lpf[11][15] , \accum_lpf[11][14] ,
         \accum_lpf[11][13] , \accum_lpf[11][12] , \accum_lpf[11][11] ,
         \accum_lpf[11][10] , \accum_lpf[11][9] , \accum_lpf[11][8] ,
         \accum_lpf[11][7] , \accum_lpf[11][6] , \accum_lpf[11][5] ,
         \accum_lpf[11][4] , \accum_lpf[11][3] , \accum_lpf[11][2] ,
         \accum_lpf[11][1] , \accum_lpf[12][16] , \accum_lpf[12][15] ,
         \accum_lpf[12][14] , \accum_lpf[12][13] , \accum_lpf[12][12] ,
         \accum_lpf[12][11] , \accum_lpf[12][10] , \accum_lpf[12][9] ,
         \accum_lpf[12][8] , \accum_lpf[12][7] , \accum_lpf[12][6] ,
         \accum_lpf[12][5] , \accum_lpf[12][4] , \accum_lpf[12][3] ,
         \accum_lpf[12][2] , \accum_lpf[12][1] , \accum_lpf[13][15] ,
         \accum_lpf[13][14] , \accum_lpf[13][13] , \accum_lpf[13][12] ,
         \accum_lpf[13][11] , \accum_lpf[13][10] , \accum_lpf[13][9] ,
         \accum_lpf[13][8] , \accum_lpf[13][7] , \accum_lpf[13][6] ,
         \accum_lpf[13][5] , \accum_lpf[13][4] , \accum_lpf[13][3] ,
         \accum_lpf[13][2] , \accum_lpf[13][1] , \accum_lpf[14][16] ,
         \accum_lpf[14][15] , \accum_lpf[14][13] , \accum_lpf[14][12] ,
         \accum_lpf[14][11] , \accum_lpf[14][10] , \accum_lpf[14][9] ,
         \accum_lpf[14][8] , \accum_lpf[14][7] , \accum_lpf[14][6] ,
         \accum_lpf[14][5] , \accum_lpf[14][4] , \accum_lpf[14][3] ,
         \accum_lpf[14][2] , \accum_lpf[14][1] , \accum_lpf[15][15] ,
         \accum_lpf[15][14] , \accum_lpf[15][13] , \accum_lpf[15][12] ,
         \accum_lpf[15][11] , \accum_lpf[15][10] , \accum_lpf[15][9] , N268,
         N294, \accum_hpf[1][16] , \accum_hpf[1][15] , \accum_hpf[1][14] ,
         \accum_hpf[1][9] , \accum_hpf[1][8] , \accum_hpf[1][7] ,
         \accum_hpf[1][6] , \accum_hpf[1][5] , \accum_hpf[1][4] ,
         \accum_hpf[1][3] , \accum_hpf[1][2] , \accum_hpf[1][1] ,
         \accum_hpf[2][16] , \accum_hpf[2][15] , \accum_hpf[2][14] ,
         \accum_hpf[2][13] , \accum_hpf[2][12] , \accum_hpf[2][11] ,
         \accum_hpf[2][10] , \accum_hpf[2][9] , \accum_hpf[2][8] ,
         \accum_hpf[2][7] , \accum_hpf[2][6] , \accum_hpf[2][5] ,
         \accum_hpf[2][4] , \accum_hpf[2][3] , \accum_hpf[2][2] ,
         \accum_hpf[2][1] , \accum_hpf[3][16] , \accum_hpf[3][15] ,
         \accum_hpf[3][14] , \accum_hpf[3][13] , \accum_hpf[3][12] ,
         \accum_hpf[3][11] , \accum_hpf[3][10] , \accum_hpf[3][9] ,
         \accum_hpf[3][8] , \accum_hpf[3][7] , \accum_hpf[3][6] ,
         \accum_hpf[3][5] , \accum_hpf[3][4] , \accum_hpf[3][3] ,
         \accum_hpf[3][2] , \accum_hpf[3][1] , \accum_hpf[4][16] ,
         \accum_hpf[4][15] , \accum_hpf[4][14] , \accum_hpf[4][13] ,
         \accum_hpf[4][12] , \accum_hpf[4][11] , \accum_hpf[4][10] ,
         \accum_hpf[4][9] , \accum_hpf[4][8] , \accum_hpf[4][7] ,
         \accum_hpf[4][6] , \accum_hpf[4][5] , \accum_hpf[4][4] ,
         \accum_hpf[4][3] , \accum_hpf[4][2] , \accum_hpf[4][1] ,
         \accum_hpf[5][16] , \accum_hpf[5][15] , \accum_hpf[5][14] ,
         \accum_hpf[5][13] , \accum_hpf[5][12] , \accum_hpf[5][11] ,
         \accum_hpf[5][10] , \accum_hpf[5][9] , \accum_hpf[5][8] ,
         \accum_hpf[5][7] , \accum_hpf[5][6] , \accum_hpf[5][5] ,
         \accum_hpf[5][4] , \accum_hpf[5][3] , \accum_hpf[5][2] ,
         \accum_hpf[5][1] , \accum_hpf[6][16] , \accum_hpf[6][15] ,
         \accum_hpf[6][14] , \accum_hpf[6][13] , \accum_hpf[6][12] ,
         \accum_hpf[6][11] , \accum_hpf[6][10] , \accum_hpf[6][9] ,
         \accum_hpf[6][8] , \accum_hpf[7][16] , \accum_hpf[7][15] ,
         \accum_hpf[7][14] , \accum_hpf[7][13] , \accum_hpf[7][12] ,
         \accum_hpf[7][11] , \accum_hpf[7][10] , \accum_hpf[7][9] ,
         \accum_hpf[7][8] , \accum_hpf[8][16] , \accum_hpf[8][15] ,
         \accum_hpf[8][14] , \accum_hpf[8][13] , \accum_hpf[8][12] ,
         \accum_hpf[8][11] , \accum_hpf[8][10] , \accum_hpf[8][9] ,
         \accum_hpf[8][8] , \accum_hpf[8][7] , \accum_hpf[8][6] ,
         \accum_hpf[8][5] , \accum_hpf[8][4] , \accum_hpf[8][3] ,
         \accum_hpf[8][2] , \accum_hpf[8][1] , \accum_hpf[9][16] ,
         \accum_hpf[9][15] , \accum_hpf[9][14] , \accum_hpf[9][13] ,
         \accum_hpf[9][12] , \accum_hpf[9][11] , \accum_hpf[9][10] ,
         \accum_hpf[9][9] , \accum_hpf[9][8] , \accum_hpf[9][7] ,
         \accum_hpf[9][6] , \accum_hpf[9][5] , \accum_hpf[9][4] ,
         \accum_hpf[9][3] , \accum_hpf[9][2] , \accum_hpf[9][1] ,
         \accum_hpf[10][16] , \accum_hpf[10][15] , \accum_hpf[10][14] ,
         \accum_hpf[10][13] , \accum_hpf[10][12] , \accum_hpf[10][11] ,
         \accum_hpf[10][10] , \accum_hpf[10][9] , \accum_hpf[10][8] ,
         \accum_hpf[10][7] , \accum_hpf[10][6] , \accum_hpf[10][5] ,
         \accum_hpf[10][4] , \accum_hpf[10][3] , \accum_hpf[10][2] ,
         \accum_hpf[10][1] , \accum_hpf[11][16] , \accum_hpf[11][15] ,
         \accum_hpf[11][14] , \accum_hpf[11][13] , \accum_hpf[11][12] ,
         \accum_hpf[11][11] , \accum_hpf[11][10] , \accum_hpf[11][9] ,
         \accum_hpf[11][8] , \accum_hpf[11][7] , \accum_hpf[11][6] ,
         \accum_hpf[11][5] , \accum_hpf[11][4] , \accum_hpf[11][3] ,
         \accum_hpf[11][2] , \accum_hpf[11][1] , \accum_hpf[12][16] ,
         \accum_hpf[12][15] , \accum_hpf[12][14] , \accum_hpf[12][13] ,
         \accum_hpf[12][12] , \accum_hpf[12][11] , \accum_hpf[12][10] ,
         \accum_hpf[12][9] , \accum_hpf[12][8] , \accum_hpf[12][7] ,
         \accum_hpf[12][6] , \accum_hpf[12][5] , \accum_hpf[12][4] ,
         \accum_hpf[12][3] , \accum_hpf[12][2] , \accum_hpf[12][1] ,
         \accum_hpf[13][16] , \accum_hpf[13][15] , \accum_hpf[13][14] ,
         \accum_hpf[13][13] , \accum_hpf[13][12] , \accum_hpf[13][11] ,
         \accum_hpf[13][10] , \accum_hpf[13][9] , \accum_hpf[13][8] ,
         \accum_hpf[13][7] , \accum_hpf[13][6] , \accum_hpf[13][5] ,
         \accum_hpf[13][4] , \accum_hpf[13][3] , \accum_hpf[13][2] ,
         \accum_hpf[13][1] , \accum_hpf[14][16] , \accum_hpf[14][15] ,
         \accum_hpf[14][14] , \accum_hpf[14][13] , \accum_hpf[14][12] ,
         \accum_hpf[14][11] , \accum_hpf[14][10] , \accum_hpf[14][9] ,
         \accum_hpf[14][8] , \accum_hpf[14][7] , \accum_hpf[14][6] ,
         \accum_hpf[14][5] , \accum_hpf[14][4] , \accum_hpf[14][3] ,
         \accum_hpf[14][2] , \accum_hpf[14][1] , \accum_hpf[15][15] ,
         \accum_hpf[15][14] , \accum_hpf[15][13] , \accum_hpf[15][12] ,
         \accum_hpf[15][11] , \accum_hpf[15][10] , \accum_hpf[15][9] , N805,
         net6383, n952, n953, n1983, n1986, n2496, n2499, n2500, n2502, n2503,
         n2504, n2506, n2507, n2508, n2509, n2510, n2511, n2512, n2513, n2514,
         n2515, n2516, n2517, n2518, n2519, n2520, n2521, n2522, n2523, n2524,
         n2525, n2526, n2527, n2528, n2529, n2530, n2531, n2532, n2533, n2534,
         n2535, n2536, n2537, n2540, n2541, n2542, n2543, n2544, n2545, n2546,
         n2547, n2548, n2549, n2550, n2552, n2553, n2554, n2555, n2556, n2557,
         n2558, n2559, n2560, n2562, n2564, n2565, n2566, n2567, n2568, n2569,
         n2570, n2571, n2572, n2573, n2574, n2576, n2577, n2578, n2579, n2580,
         n2581, n2582, n2583, n2585, n2586, n2587, n2588, n2589, n2590, n2592,
         n2593, n2594, n2597, n2598, n2599, n2600, n2601, n2602, n2604, n2605,
         n2606, n2607, n2608, n2609, n2610, n2611, n2612, n2613, n2614, n2615,
         n2616, n2617, n2618, n2619, n2620, n2621, n2622, n2623, n2624, n2625,
         n2626, n2627, n2628, n2629, n2630, n2631, n2632, n2633, n2634, n2635,
         n2636, n2637, n2638, n2639, n2640, n2641, n2642, n2643, n2644, n2645,
         n2646, n2647, n2648, n2649, n2650, n2651, n2652, n2653, n2654, n2655,
         n2656, n2657, n2658, n2659, n2660, n2661, n2662, n2663, n2664, n2665,
         n2666, n2667, n2668, n2669, n2670, n2671, n2672, n2673, n2674, n2675,
         n2676, n2677, n2678, n2679, n2680, n2681, n2682, n2683, n2684, n2685,
         n2686, n2687, n2688, n2689, n2690, n2691, n2692, n2693, n2694, n2695,
         n2696, n2697, n2698, n2699, n2700, n2701, n2702, n2703, n2704, n2705,
         n2706, n2707, n2708, n2709, n2710, n2711, n2712, n2713, n2714, n2715,
         n2716, n2717, n2718, n2719, n2720, n2721, n2722, n2723, n2724, n2725,
         n2726, n2727, n2728, n2729, n2730, n2731, n2732, n2733, n2734, n2735,
         n2736, n2737, n2738, n2739, n2740, n2741, n2742, n2743, n2744, n2745,
         n2746, n2747, n2748, n2749, n2750, n2751, n2752, n2753, n2754, n2755,
         n2756, n2757, n2758, n2759, n2760, n2761, n2762, n2763, n2764, n2765,
         n2766, n2767, n2768, n2769, n2770, n2771, n2772, n2773, n2774, n2775,
         n2776, n2777, n2778, n2779, n2780, n2781, n2782, n2783, n2784, n2785,
         n2786, n2787, n2788, n2789, n2790, n2791, n2792, n2793, n2794, n2795,
         n2796, n2797, n2798, n2799, n2800, n2801, n2802, n2803, n2804, n2805,
         n2806, n2807, n2808, n2809, n2810, n2811, n2812, n2813, n2814, n2815,
         n2816, n2817, n2818, n2819, n2820, n2821, n2822, n2823, n2824, n2825,
         n2826, n2827, n2828, n2829, n2830, n2831, n2832, n2833, n2834, n2835,
         n2836, n2837, n2838, n2839, n2840, n2841, n2842, n2843, n2844, n2845,
         n2846, n2847, n2848, n2849, n2850, n2851, n2852, n2853, n2854, n2855,
         n2856, n2857, n2858, n2860, n2861, n2862, n2863, n2864, n2865, n2866,
         n2869, n2870, n2871, n2872, n2873, n2874, n2875, n2876, n2877, n2878,
         n2879, n2880, n2881, n2882, n2883, n2884, n2885, n2886, n2887, n2888,
         n2889, n2890, n2891, n2892, n2893, n2894, n2895, n2896, n2897, n2898,
         n2899, n2900, n2901, n2902, n2903, n2904, n2905, n2906, n2907, n2908,
         n2909, n2910, n2911, n2912, n2913, n2914, n2915, n2916, n2917, n2918,
         n2919, n2920, n2921, n2922, n2923, n2924, n2925, n2926, n2927, n2928,
         n2929, n2930, n2931, n2932, n2933, n2934, n2935, n2936, n2937, n2938,
         n2939, n2940, n2941, n2942, n2943, n2944, n2945, n2946, n2947, n2948,
         n2949, n2950, n2951, n2952, n2953, n2954, n2955, n2956, n2957, n2958,
         n2959, n2960, n2961, n2963, n2964, n2965, n2966, n2967, n2968, n2969,
         n2970, n2972, n2973, n2974, n2975, n2976, n2977, n2978, n2979, n2980,
         n2981, n2982, n2983, n2984, n2985, n2986, n2989, n2990, n2991, n2992,
         n2993, n2994, n2995, n2996, n2997, n2998, n2999, n3000, n3001, n3002,
         n3003, n3004, n3005, n3006, n3008, n3012, n3013, n3029,
         \accum_lpf[9][0] , \accum_lpf[8][0] , \accum_lpf[5][0] ,
         \accum_lpf[4][0] , \accum_lpf[3][0] , \accum_lpf[2][0] ,
         \accum_lpf[14][0] , \accum_lpf[12][0] , \accum_lpf[11][0] ,
         \accum_lpf[10][0] , \accum_hpf[9][0] , \accum_hpf[8][0] ,
         \accum_hpf[5][0] , \accum_hpf[4][0] , \accum_hpf[3][0] ,
         \accum_hpf[2][0] , \accum_hpf[14][0] , \accum_hpf[12][0] ,
         \accum_hpf[11][0] , \accum_hpf[10][0] , n3365, n3366, n3367, n3368,
         n3369, n3370, n3371, n3372, n3373, n3374, n3375, n3376, n3377, n3378,
         n3408, n3410, n3411, n3412, n3431, n3433, n3434, n3435, n3451, n3452,
         n3453, n3454, n3455, n3456, n3458, n3459, n3470, n3471, n3472, n3527,
         n3554, n3555, n3556, n3557, n3558, n3559, n3575, n3576, n3577, n3578,
         n3579, n3580, n3581, n3582, n3594, n3595, n3596, n3597, n3673, n3680,
         n3681, n4740, n4741, n4742, n4743, n4744, n4735, n4736, n4737, n4738,
         n4739, n3676, n3674, n3407, n3409, \mulitply5[8] , \mulitply3[10] ,
         n3713, n3714, n3715, n3716, n3717, n3718, n3719, n3720, n3721, n3722,
         n3723, n3724, n3725, n3726, n3727, n3728, n3729, n3730, n3731, n3732,
         n3734, n3735, n3736, n3737, n3738, n3764, n3766, n3768, n3770, n3771,
         n3772, n3773, n3790, n3791, n3792, n3793, n3794, n3795, n3802, n3804,
         n3806, n3808, n3810, n3812, n3816, n3819, n3820, n3821, n3822, n3823,
         n3824, n3825, n3826, n3827, n3828, n3829, n3830, n3831, n3832, n3833,
         n3834, n3835, n3836, n3837, n3838, n3839, n3840, n3841, n3842, n3843,
         n3844, n3845, n3846, n3847, n3848, n3849, n3850, n3851, n3852, n3853,
         n3854, n3855, n3856, n3857, n3858, n3859, n3860, n3861, n3862, n3863,
         n3864, n3865, n3866, n3867, n3868, n3869, n3870, n3871, n3872, n3873,
         n3874, n3875, n3876, n3877, n3878, n3879, n3880, n3881, n3882, n3883,
         n3884, n3885, n3886, n3887, n3888, n3889, n3890, n3891, n3892, n3893,
         n3894, n3895, n3896, n3897, n3898, n3899, n3900, n3901, n3902, n3903,
         n3904, n3905, n3906, n3907, n4288, n4289, n4290, n4291, n4292, n4293,
         n4294, n4295, n4296, n4297, n4298, n4299, n4300, n4301, n4302, n4303,
         n4304, n4305, n4306, n4307, n4308, n4309, n4310, n4311, n4312, n4313,
         n4314, n4315, n4316, n4317, n4318, n4319, n4320, n4321, n4322, n4323,
         n4324, n4325, n4326, n4327, n4328, n4329, n4330, n4331, n4332, n4333,
         n4334, n4335, n4336, n4337, n4338, n4339, n4340, n4341, n4342, n4343,
         n4344, n4347, n4348, n4349, n4350, n4351, n4352, n4353, n4354, n4355,
         n4356, n4357, n4358, n4359, n4366, n4367, n4368, n4370, n4371, n4372,
         n4373, n4374, n4375, n4376, n4377, n4378, n4379, n4380, n4381, n4382,
         n4383, n4384, n4385, n4386, n4387, n4388, n4389, n4390, n4391, n4392,
         n4393, n4394, n4395, n4396, n4397, n4398, n4399, n4400, n4401, n4402,
         n4403, n4404, n4405, n4406, n4407, n4408, n4409, n4410, n4411, n4412,
         n4413, n4414, n4415, n4416, n4417, n4418, n4419, n4420, n4421, n4422,
         n4423, n4424, n4425, n4426, n4427, n4428, n4429, n4430, n4431, n4432,
         n4433, n4434, n4435, n4436, n4437, n4438, n4439, n4440, n4441, n4442,
         n4443, n4444, n4445, n4446, n4447, n4448, n4449, n4450, n4451, n4452,
         n4453, n4454, n4455, n4456, n4457, n4458, n4459, n4460, n4461, n4462,
         n4463, n4464, n4465, n4466, n4467, n4468, n4469, n4470, n4471, n4472,
         n4473, n4474, n4475, n4476, n4477, n4478, n4479, n4480, n4481, n4482,
         n4483, n4484, n4485, n4486, n4487, n4488, n4489, n4490, n4491, n4492,
         n4493, n4494, n4495, n4496, n4497, n4498, n4499, n4500, n4501, n4502,
         n4503, n4504, n4505, n4506, n4507, n4508, n4509, n4510, n4511, n4512,
         n4513, n4514, n4515, n4516, n4517, n4518, n4519, n4520, n4521, n4522,
         n4523, n4524, n4525, n4526, n4527, n4528, n4529, n4530, n4531, n4532,
         n4533, n4534, n4535, n4536, n4537, n4538, n4539, n4540, n4541, n4542,
         n4543, n4544, n4545, n4546, n4547, n4548, n4549, n4550, n4551, n4552,
         n4553, n4554, n4555, n4556, n4557, n4558, n4559, n4560, n4561, n4562,
         n4563, n4564, n4565, n4566, n4567, n4568, n4569, n4570, n4571, n4572,
         n4573, n4574, n4575, n4576, n4577, n4578, n4579, n4580, n4581, n4582,
         n4583, n4584, n4585, n4586, n4587, n4588, n4589, n4590, n4591, n4592,
         n4593, n4594, n4595, n4596, n4597, n4598, n4599, n4600, n4601, n4602,
         n4603, n4604, n4605, n4606, n4607, n4608, n4609, n4610, n4611, n4612,
         n4613, n4614, n4615, n4616, n4617, n4618, n4619, n4620, n4621, n4622,
         n4623, n4624, n4625, n4626, n4627, n4628, n4629, n4630, n4631, n4632,
         n4633, n4634, n4635, n4636, n4637, n4638, n4639, n4640, n4641, n4642,
         n4643, n4644, n4645, n4646, n4647, n4648, n4649, n4650, n4651, n4652,
         n4653, n4654, n4655, n4656, n4657, n4658, n4659, n4660, n4661, n4662,
         n4663, n4664, n4665, n4666, n4667, n4668, n4669, n4670, n4671, n4672,
         n4673, n4674, n4675, n4676, n4677, n4678, n4679, n4680, n4681, n4682,
         n4683, n4684, n4685, n4686, n4687, n4688, n4689, n4690, n4691, n4692,
         n4693, n4694, n4695, n4696, n4697, n4698, n4699, n4700, n4701, n4702,
         n4703, n4704, n4705, n4706, n4707, n4708, n4709, n4710, n4711, n4712,
         n4713, n4714, n4715, n4716, n4717, n4718, n4719, n4720, n4721, n4722,
         n4723, n4724, n4725, n4726, n4727, n4728, n4729, n4730, n4731, n4732,
         n4733, n4734;
  wire   [7:0] _data;
  wire   [9:0] addr;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  rom_1024x4_t13 rom0 ( .Q(_data[3:0]), .A({n2981, n2980, n2979, n2978, n2977, 
        n2976, n2975, n2974, n2973, 1'b0}), .CLK(clk), .CEN(1'b0) );
  rom_1024x4_t13 rom1 ( .Q(_data[7:4]), .A({n2981, n2980, n2979, n2978, n2977, 
        n2976, n2975, n2974, n2973, 1'b1}), .CLK(clk), .CEN(1'b0) );
  CLKINVX1 U276 ( .A(clk), .Y(n1986) );
  MBF_DW01_inc_0 add_47 ( .A({n2983, n2981, n2980, n2979, n2978, n2977, n2976, 
        n2975, n2974, n2973}), .SUM({zero, addr[8:1], N9}) );
  MBF_DW01_sub_16 sub_136 ( .A({n2512, n2514, n2600, n2602, n2592, n2605, 
        n2504, n2511, n2601, n2565, n2581, n2564, n2582, n2583, n2524, n2528, 
        \accum_hpf[14][0] }), .B({n4385, n4385, n4385, n4385, n4385, n4385, 
        n4385, n4385, n4385, n4386, n4730, n4380, n4371, n4368, n4377, n3907, 
        n4370}), .CI(1'b0), .DIFF({N805, \accum_hpf[15][15] , 
        \accum_hpf[15][14] , \accum_hpf[15][13] , \accum_hpf[15][12] , 
        \accum_hpf[15][11] , \accum_hpf[15][10] , \accum_hpf[15][9] , n952, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7}) );
  MBF_DW01_sub_17 sub_110 ( .A({n2502, n2500, n2598, n2604, n2562, n2599, 
        n2540, n2546, n2529, n2533, n2542, n2518, n2523, n2521, n2577, n2509, 
        \accum_lpf[14][0] }), .B({n4385, n4385, n4385, n4385, n4385, n4385, 
        n4385, n4385, n4385, n4386, n4730, n4731, n4371, n4368, n4377, n3907, 
        n4370}), .CI(1'b0), .DIFF({N294, \accum_lpf[15][15] , 
        \accum_lpf[15][14] , \accum_lpf[15][13] , \accum_lpf[15][12] , 
        \accum_lpf[15][11] , \accum_lpf[15][10] , \accum_lpf[15][9] , n953, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15}) );
  MBF_DW01_add_18 add_124 ( .A({n2906, n2905, n2904, n2903, n2902, n2901, 
        n2900, n2899, n2898, n2897, n2896, n2895, n2894, n2893, n2892, n2891, 
        \accum_hpf[2][0] }), .B({n4385, n4385, n4385, n4385, n4385, n4386, 
        n4350, n4356, n4357, n4340, n4727, n4359, n3676, n4373, n4370, 1'b0, 
        1'b0}), .CI(1'b0), .SUM({\accum_hpf[3][16] , \accum_hpf[3][15] , 
        \accum_hpf[3][14] , \accum_hpf[3][13] , \accum_hpf[3][12] , 
        \accum_hpf[3][11] , \accum_hpf[3][10] , \accum_hpf[3][9] , 
        \accum_hpf[3][8] , \accum_hpf[3][7] , \accum_hpf[3][6] , 
        \accum_hpf[3][5] , \accum_hpf[3][4] , \accum_hpf[3][3] , 
        \accum_hpf[3][2] , \accum_hpf[3][1] , \accum_hpf[3][0] }) );
  MBF_DW01_add_17 add_107 ( .A({n2638, n2637, n2636, n2635, n2634, n2633, 
        n2632, n2631, n2630, n2629, n2628, n2627, n2626, n2625, n2624, n2623, 
        \accum_lpf[11][0] }), .B({n4385, n4385, n4385, n4385, n4385, n4386, 
        n4350, n4356, n4357, n4340, n4727, n3681, n3676, n4373, n4370, 1'b0, 
        1'b0}), .CI(1'b0), .SUM({\accum_lpf[12][16] , \accum_lpf[12][15] , 
        \accum_lpf[12][14] , \accum_lpf[12][13] , \accum_lpf[12][12] , 
        \accum_lpf[12][11] , \accum_lpf[12][10] , \accum_lpf[12][9] , 
        \accum_lpf[12][8] , \accum_lpf[12][7] , \accum_lpf[12][6] , 
        \accum_lpf[12][5] , \accum_lpf[12][4] , \accum_lpf[12][3] , 
        \accum_lpf[12][2] , \accum_lpf[12][1] , \accum_lpf[12][0] }) );
  MBF_DW01_add_19 add_98 ( .A({n2842, n2841, n2840, n2839, n2838, n2837, n2836, 
        n2835, n2834, n2833, n2832, n2831, n2830, n2829, n2828, n2827, 
        \accum_lpf[2][0] }), .B({n4385, n4385, n4385, n4385, n4385, n4386, 
        n4350, n4356, n4357, n4340, n4727, n3681, n3676, n4373, n4374, 1'b0, 
        1'b0}), .CI(1'b0), .SUM({\accum_lpf[3][16] , \accum_lpf[3][15] , 
        \accum_lpf[3][14] , \accum_lpf[3][13] , \accum_lpf[3][12] , 
        \accum_lpf[3][11] , \accum_lpf[3][10] , \accum_lpf[3][9] , 
        \accum_lpf[3][8] , \accum_lpf[3][7] , \accum_lpf[3][6] , 
        \accum_lpf[3][5] , \accum_lpf[3][4] , \accum_lpf[3][3] , 
        \accum_lpf[3][2] , \accum_lpf[3][1] , \accum_lpf[3][0] }) );
  MBF_DW01_sub_23 sub_123 ( .A({n2503, n2541, n2590, n2590, n2590, n2590, 
        n2541, n2547, n2530, n2572, n2543, n2519, n2569, n2522, n2579, n2508, 
        n2992}), .B({n4385, n4385, n4385, n4385, n4385, n4385, n4386, n4385, 
        n4730, n4380, n4371, n4372, n4377, n3907, n4374, 1'b0, 1'b0}), .CI(
        1'b0), .DIFF({\accum_hpf[2][16] , \accum_hpf[2][15] , 
        \accum_hpf[2][14] , \accum_hpf[2][13] , \accum_hpf[2][12] , 
        \accum_hpf[2][11] , \accum_hpf[2][10] , \accum_hpf[2][9] , 
        \accum_hpf[2][8] , \accum_hpf[2][7] , \accum_hpf[2][6] , 
        \accum_hpf[2][5] , \accum_hpf[2][4] , \accum_hpf[2][3] , 
        \accum_hpf[2][2] , \accum_hpf[2][1] , \accum_hpf[2][0] }) );
  MBF_DW01_add_23 add_125 ( .A({n2954, n2953, n2952, n2951, n2950, n2949, 
        n2948, n2947, n2946, n2945, n2944, n2943, n2942, n2941, n2940, n2939, 
        \accum_hpf[3][0] }), .B({n4385, n4385, n4385, n4385, n4386, n4350, 
        n4356, n4357, n4340, n4727, n3681, n3676, n4373, n4370, 1'b0, 1'b0, 
        1'b0}), .CI(1'b0), .SUM({\accum_hpf[4][16] , \accum_hpf[4][15] , 
        \accum_hpf[4][14] , \accum_hpf[4][13] , \accum_hpf[4][12] , 
        \accum_hpf[4][11] , \accum_hpf[4][10] , \accum_hpf[4][9] , 
        \accum_hpf[4][8] , \accum_hpf[4][7] , \accum_hpf[4][6] , 
        \accum_hpf[4][5] , \accum_hpf[4][4] , \accum_hpf[4][3] , 
        \accum_hpf[4][2] , \accum_hpf[4][1] , \accum_hpf[4][0] }) );
  MBF_DW01_add_24 add_134 ( .A({n2670, n2669, n2668, n2667, n2666, n2665, 
        n2664, n2663, n2662, n2661, n2660, n2659, n2658, n2657, n2656, n2655, 
        \accum_hpf[12][0] }), .B({n4385, n4385, n4385, n4385, n4385, n4385, 
        n4385, n4386, n4730, n4380, n4371, n4368, n4377, n4376, n4374, 1'b0, 
        1'b0}), .CI(1'b0), .SUM({\accum_hpf[13][16] , \accum_hpf[13][15] , 
        \accum_hpf[13][14] , \accum_hpf[13][13] , \accum_hpf[13][12] , 
        \accum_hpf[13][11] , \accum_hpf[13][10] , \accum_hpf[13][9] , 
        \accum_hpf[13][8] , \accum_hpf[13][7] , \accum_hpf[13][6] , 
        \accum_hpf[13][5] , \accum_hpf[13][4] , \accum_hpf[13][3] , 
        \accum_hpf[13][2] , \accum_hpf[13][1] , \accum_hpf[14][0] }) );
  MBF_DW01_add_25 add_108 ( .A({n2938, n2937, n2936, n2935, n2934, n2933, 
        n2932, n2931, n2930, n2929, n2928, n2927, n2926, n2925, n2924, n2923, 
        \accum_lpf[12][0] }), .B({n4385, n4385, n4385, n4385, n4385, n4385, 
        n4385, n4386, n4730, n4380, n4371, n4372, n4377, n4376, n4374, 1'b0, 
        1'b0}), .CI(1'b0), .SUM({N268, \accum_lpf[13][15] , 
        \accum_lpf[13][14] , \accum_lpf[13][13] , \accum_lpf[13][12] , 
        \accum_lpf[13][11] , \accum_lpf[13][10] , \accum_lpf[13][9] , 
        \accum_lpf[13][8] , \accum_lpf[13][7] , \accum_lpf[13][6] , 
        \accum_lpf[13][5] , \accum_lpf[13][4] , \accum_lpf[13][3] , 
        \accum_lpf[13][2] , \accum_lpf[13][1] , \accum_lpf[14][0] }) );
  MBF_DW01_add_26 add_97 ( .A({n2506, n2597, n2597, n2597, n2597, n2597, n2597, 
        n2545, n2580, n2570, n2567, n2517, n2568, n2520, n2578, n2507, n2992}), 
        .B({n4386, n4385, n4385, n4386, n4385, n4385, n4385, n4386, n4730, 
        n4380, n4371, n4372, n4377, n4376, n4374, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({\accum_lpf[2][16] , \accum_lpf[2][15] , \accum_lpf[2][14] , 
        \accum_lpf[2][13] , \accum_lpf[2][12] , \accum_lpf[2][11] , 
        \accum_lpf[2][10] , \accum_lpf[2][9] , \accum_lpf[2][8] , 
        \accum_lpf[2][7] , \accum_lpf[2][6] , \accum_lpf[2][5] , 
        \accum_lpf[2][4] , \accum_lpf[2][3] , \accum_lpf[2][2] , 
        \accum_lpf[2][1] , \accum_lpf[2][0] }) );
  MBF_DW01_sub_26 sub_126 ( .A({n2890, n2889, n2888, n2887, n2886, n2885, 
        n2884, n2883, n2882, n2881, n2880, n2879, n2878, n2877, n2876, n2875, 
        \accum_hpf[4][0] }), .B({n4385, n4385, n4385, n4385, n4725, n4347, 
        n3673, n4355, \mulitply5[8] , n4352, n4358, n4344, n4376, n4370, 1'b0, 
        1'b0, 1'b0}), .CI(1'b0), .DIFF({\accum_hpf[5][16] , \accum_hpf[5][15] , 
        \accum_hpf[5][14] , \accum_hpf[5][13] , \accum_hpf[5][12] , 
        \accum_hpf[5][11] , \accum_hpf[5][10] , \accum_hpf[5][9] , 
        \accum_hpf[5][8] , \accum_hpf[5][7] , \accum_hpf[5][6] , 
        \accum_hpf[5][5] , \accum_hpf[5][4] , \accum_hpf[5][3] , 
        \accum_hpf[5][2] , \accum_hpf[5][1] , \accum_hpf[5][0] }) );
  MBF_DW01_sub_25 sub_105 ( .A({n2716, n2715, n2714, n2713, n2712, n2711, 
        n2710, n2709, n2708, n2707, n2706, n2705, n2704, n2703, n2702, n2701, 
        \accum_lpf[9][0] }), .B({n4385, n4385, n4386, n4385, n4725, n4347, 
        n3673, n4355, \mulitply5[8] , n4352, n4358, n4344, n4376, n4374, 1'b0, 
        1'b0, 1'b0}), .CI(1'b0), .DIFF({\accum_lpf[10][16] , 
        \accum_lpf[10][15] , \accum_lpf[10][14] , \accum_lpf[10][13] , 
        \accum_lpf[10][12] , \accum_lpf[10][11] , \accum_lpf[10][10] , 
        \accum_lpf[10][9] , \accum_lpf[10][8] , \accum_lpf[10][7] , 
        \accum_lpf[10][6] , \accum_lpf[10][5] , \accum_lpf[10][4] , 
        \accum_lpf[10][3] , \accum_lpf[10][2] , \accum_lpf[10][1] , 
        \accum_lpf[10][0] }) );
  MBF_DW01_sub_24 sub_100 ( .A({n2622, n2621, n2620, n2619, n2618, n2617, 
        n2616, n2615, n2614, n2613, n2612, n2611, n2610, n2609, n2608, n2607, 
        \accum_lpf[4][0] }), .B({n4385, n4385, n4385, n4385, n4725, n4347, 
        n3673, n4355, \mulitply5[8] , n4352, n4358, n4344, n4376, n4374, 1'b0, 
        1'b0, 1'b0}), .CI(1'b0), .DIFF({\accum_lpf[5][16] , \accum_lpf[5][15] , 
        \accum_lpf[5][14] , \accum_lpf[5][13] , \accum_lpf[5][12] , 
        \accum_lpf[5][11] , \accum_lpf[5][10] , \accum_lpf[5][9] , 
        \accum_lpf[5][8] , \accum_lpf[5][7] , \accum_lpf[5][6] , 
        \accum_lpf[5][5] , \accum_lpf[5][4] , \accum_lpf[5][3] , 
        \accum_lpf[5][2] , \accum_lpf[5][1] , \accum_lpf[5][0] }) );
  MBF_DW01_add_27 add_131 ( .A({n2732, n2731, n2730, n2729, n2728, n2727, 
        n2726, n2725, n2724, n2723, n2722, n2721, n2720, n2719, n2718, n2717, 
        \accum_hpf[9][0] }), .B({n4385, n4385, n4385, n4385, n4725, n4348, 
        n3673, n4355, \mulitply5[8] , n4352, n4358, n4344, n3907, n4374, 1'b0, 
        1'b0, 1'b0}), .CI(1'b0), .SUM({\accum_hpf[10][16] , 
        \accum_hpf[10][15] , \accum_hpf[10][14] , \accum_hpf[10][13] , 
        \accum_hpf[10][12] , \accum_hpf[10][11] , \accum_hpf[10][10] , 
        \accum_hpf[10][9] , \accum_hpf[10][8] , \accum_hpf[10][7] , 
        \accum_hpf[10][6] , \accum_hpf[10][5] , \accum_hpf[10][4] , 
        \accum_hpf[10][3] , \accum_hpf[10][2] , \accum_hpf[10][1] , 
        \accum_hpf[10][0] }) );
  MBF_DW01_sub_19 sub_127 ( .A({n2826, n2825, n2824, n2823, n2822, n2821, 
        n2820, n2819, n2818, n2817, n2816, n2815, n2814, n2813, n2812, n2811, 
        \accum_hpf[5][0] }), .B({n4385, n4386, n4385, n4725, n4348, n3673, 
        n4355, \mulitply5[8] , n4352, n4358, n4723, n3907, n4370, 1'b0, 1'b0, 
        1'b0, 1'b0}), .CI(1'b0), .DIFF({\accum_hpf[6][16] , \accum_hpf[6][15] , 
        \accum_hpf[6][14] , \accum_hpf[6][13] , \accum_hpf[6][12] , 
        \accum_hpf[6][11] , \accum_hpf[6][10] , \accum_hpf[6][9] , 
        \accum_hpf[6][8] , \accum_hpf[8][7] , \accum_hpf[8][6] , 
        \accum_hpf[8][5] , \accum_hpf[8][4] , \accum_hpf[8][3] , 
        \accum_hpf[8][2] , \accum_hpf[8][1] , \accum_hpf[8][0] }) );
  MBF_DW01_add_20 add_130 ( .A({n2606, n2594, n2537, n2544, n2571, n2548, 
        n2515, n2576, n2510, n2751, n2748, n2745, n2742, n2739, n2736, n2733, 
        \accum_hpf[8][0] }), .B({n4385, n4385, n4385, n4725, n4348, n3673, 
        n4355, \mulitply5[8] , n4352, n4358, n4344, n4376, n4370, 1'b0, 1'b0, 
        1'b0, 1'b0}), .CI(1'b0), .SUM({\accum_hpf[9][16] , \accum_hpf[9][15] , 
        \accum_hpf[9][14] , \accum_hpf[9][13] , \accum_hpf[9][12] , 
        \accum_hpf[9][11] , \accum_hpf[9][10] , \accum_hpf[9][9] , 
        \accum_hpf[9][8] , \accum_hpf[9][7] , \accum_hpf[9][6] , 
        \accum_hpf[9][5] , \accum_hpf[9][4] , \accum_hpf[9][3] , 
        \accum_hpf[9][2] , \accum_hpf[9][1] , \accum_hpf[9][0] }) );
  MBF_DW01_add_21 add_104 ( .A({n2589, n2532, n2535, n2557, n2558, n2559, 
        n2560, n2574, n2526, n2689, n2686, n2683, n2680, n2677, n2674, n2671, 
        \accum_lpf[8][0] }), .B({n4385, n4385, n4385, n4725, n4348, n3673, 
        n4355, \mulitply5[8] , n4352, n4358, n4344, n4376, n4374, 1'b0, 1'b0, 
        1'b0, 1'b0}), .CI(1'b0), .SUM({\accum_lpf[9][16] , \accum_lpf[9][15] , 
        \accum_lpf[9][14] , \accum_lpf[9][13] , \accum_lpf[9][12] , 
        \accum_lpf[9][11] , \accum_lpf[9][10] , \accum_lpf[9][9] , 
        \accum_lpf[9][8] , \accum_lpf[9][7] , \accum_lpf[9][6] , 
        \accum_lpf[9][5] , \accum_lpf[9][4] , \accum_lpf[9][3] , 
        \accum_lpf[9][2] , \accum_lpf[9][1] , \accum_lpf[9][0] }) );
  MBF_DW01_add_22 add_101 ( .A({n2794, n2793, n2792, n2791, n2790, n2789, 
        n2788, n2787, n2786, n2785, n2784, n2783, n2782, n2781, n2780, n2779, 
        \accum_lpf[5][0] }), .B({n4385, n4385, n4385, n4725, n4348, n3673, 
        n4355, \mulitply5[8] , n4352, n4358, n4344, n3907, n4374, 1'b0, 1'b0, 
        1'b0, 1'b0}), .CI(1'b0), .SUM({\accum_lpf[6][16] , \accum_lpf[6][15] , 
        \accum_lpf[6][14] , \accum_lpf[6][13] , \accum_lpf[6][12] , 
        \accum_lpf[6][11] , \accum_lpf[6][10] , \accum_lpf[6][9] , 
        \accum_lpf[6][8] , \accum_lpf[8][7] , \accum_lpf[8][6] , 
        \accum_lpf[8][5] , \accum_lpf[8][4] , \accum_lpf[8][3] , 
        \accum_lpf[8][2] , \accum_lpf[8][1] , \accum_lpf[8][0] }) );
  MBF_DW01_sub_29 sub_133 ( .A({n2654, n2653, n2652, n2651, n2650, n2649, 
        n2648, n2647, n2646, n2645, n2644, n2643, n2642, n2641, n2640, n2639, 
        \accum_hpf[11][0] }), .B({n4385, n4385, n4385, n4385, n4385, n4385, 
        n4350, n4356, n4357, n4340, n4727, n4359, n3676, n4373, n4370, 1'b0, 
        1'b0}), .CI(1'b0), .DIFF({\accum_hpf[12][16] , \accum_hpf[12][15] , 
        \accum_hpf[12][14] , \accum_hpf[12][13] , \accum_hpf[12][12] , 
        \accum_hpf[12][11] , \accum_hpf[12][10] , \accum_hpf[12][9] , 
        \accum_hpf[12][8] , \accum_hpf[12][7] , \accum_hpf[12][6] , 
        \accum_hpf[12][5] , \accum_hpf[12][4] , \accum_hpf[12][3] , 
        \accum_hpf[12][2] , \accum_hpf[12][1] , \accum_hpf[12][0] }) );
  MBF_DW01_sub_27 sub_132 ( .A({n2778, n2777, n2776, n2775, n2774, n2773, 
        n2772, n2771, n2770, n2769, n2768, n2767, n2766, n2765, n2764, n2763, 
        \accum_hpf[10][0] }), .B({n4385, n4385, n4385, n4386, n4385, n4350, 
        n4356, n4728, n4340, n4727, n3681, n3676, n4373, n4370, 1'b0, 1'b0, 
        1'b0}), .CI(1'b0), .DIFF({\accum_hpf[11][16] , \accum_hpf[11][15] , 
        \accum_hpf[11][14] , \accum_hpf[11][13] , \accum_hpf[11][12] , 
        \accum_hpf[11][11] , \accum_hpf[11][10] , \accum_hpf[11][9] , 
        \accum_hpf[11][8] , \accum_hpf[11][7] , \accum_hpf[11][6] , 
        \accum_hpf[11][5] , \accum_hpf[11][4] , \accum_hpf[11][3] , 
        \accum_hpf[11][2] , \accum_hpf[11][1] , \accum_hpf[11][0] }) );
  MBF_DW01_sub_28 sub_106 ( .A({n2810, n2809, n2808, n2807, n2806, n2805, 
        n2804, n2803, n2802, n2801, n2800, n2799, n2798, n2797, n2796, n2795, 
        \accum_lpf[10][0] }), .B({n4385, n4385, n4385, n4385, n4385, n4350, 
        n4356, n4728, n4340, n4727, n3681, n3676, n4373, n4370, 1'b0, 1'b0, 
        1'b0}), .CI(1'b0), .DIFF({\accum_lpf[11][16] , \accum_lpf[11][15] , 
        \accum_lpf[11][14] , \accum_lpf[11][13] , \accum_lpf[11][12] , 
        \accum_lpf[11][11] , \accum_lpf[11][10] , \accum_lpf[11][9] , 
        \accum_lpf[11][8] , \accum_lpf[11][7] , \accum_lpf[11][6] , 
        \accum_lpf[11][5] , \accum_lpf[11][4] , \accum_lpf[11][3] , 
        \accum_lpf[11][2] , \accum_lpf[11][1] , \accum_lpf[11][0] }) );
  MBF_DW01_sub_30 sub_99 ( .A({n2922, n2921, n2920, n2919, n2918, n2917, n2916, 
        n2915, n2914, n2913, n2912, n2911, n2910, n2909, n2908, n2907, 
        \accum_lpf[3][0] }), .B({n4385, n4385, n4385, n4386, n4385, n4350, 
        n4356, n4728, n4340, n4727, n4359, n3676, n4373, n4370, 1'b0, 1'b0, 
        1'b0}), .CI(1'b0), .DIFF({\accum_lpf[4][16] , \accum_lpf[4][15] , 
        \accum_lpf[4][14] , \accum_lpf[4][13] , \accum_lpf[4][12] , 
        \accum_lpf[4][11] , \accum_lpf[4][10] , \accum_lpf[4][9] , 
        \accum_lpf[4][8] , \accum_lpf[4][7] , \accum_lpf[4][6] , 
        \accum_lpf[4][5] , \accum_lpf[4][4] , \accum_lpf[4][3] , 
        \accum_lpf[4][2] , \accum_lpf[4][1] , \accum_lpf[4][0] }) );
  DFFTRXL clk_r_REG496_S3 ( .D(n4370), .RN(n4393), .CK(clk), .Q(n3006) );
  DFFTRX1 clk_r_REG362_S8 ( .D(\accum_hpf[6][10] ), .RN(n4394), .CK(clk), .Q(
        n2756) );
  DFFTRX1 clk_r_REG399_S6 ( .D(\accum_hpf[4][6] ), .RN(n1983), .CK(clk), .Q(
        n2880) );
  DFFTRX1 clk_r_REG380_S6 ( .D(\accum_hpf[4][7] ), .RN(n1983), .CK(clk), .Q(
        n2881) );
  DFFTRX2 clk_r_REG358_S6 ( .D(\accum_hpf[4][12] ), .RN(n1983), .CK(clk), .Q(
        n2886) );
  DFFTRX1 clk_r_REG386_S12 ( .D(\accum_hpf[10][7] ), .RN(n4396), .CK(clk), .Q(
        n2769) );
  DFFTRXL clk_r_REG480_S3 ( .D(n4378), .RN(n4412), .CK(clk), .Q(n2990), .QN(
        n3792) );
  DFFTRX1 clk_r_REG381_S7 ( .D(\accum_hpf[5][7] ), .RN(n4403), .CK(clk), .Q(
        n2817) );
  DFFTRX1 clk_r_REG343_S9 ( .D(\accum_hpf[7][14] ), .RN(n4402), .CK(clk), .Q(
        n2536), .QN(n4336) );
  DFFTRX1 clk_r_REG30_S15 ( .D(\accum_hpf[13][15] ), .RN(n4409), .CK(clk), .Q(
        n2873), .QN(n4335) );
  DFFTRX1 clk_r_REG172_S10 ( .D(\accum_lpf[7][14] ), .RN(n4403), .CK(clk), .Q(
        n2534), .QN(n4334) );
  DFFTRX1 clk_r_REG134_S8 ( .D(\accum_hpf[13][14] ), .RN(n4409), .CK(clk), .Q(
        n2872), .QN(n4333) );
  DFFTRX1 clk_r_REG185_S16 ( .D(\accum_lpf[13][13] ), .RN(n4403), .CK(clk), 
        .Q(n2855), .QN(n4329) );
  DFFTRX1 clk_r_REG65_S15 ( .D(\accum_lpf[13][15] ), .RN(n4403), .CK(clk), .Q(
        n2857), .QN(n4328) );
  DFFTRX1 clk_r_REG346_S9 ( .D(\accum_hpf[7][13] ), .RN(n4403), .CK(clk), .QN(
        n4327) );
  DFFTRX1 clk_r_REG351_S9 ( .D(\accum_hpf[7][12] ), .RN(n4395), .CK(clk), .Q(
        n2550), .QN(n4325) );
  DFFTRX1 clk_r_REG363_S9 ( .D(\accum_hpf[7][10] ), .RN(n4403), .CK(clk), .Q(
        n2552), .QN(n4324) );
  DFFTRX1 clk_r_REG472_S3 ( .D(\accum_lpf[0][3] ), .RN(n4395), .CK(clk), .Q(
        n2586), .QN(n4323) );
  DFFTRX1 clk_r_REG262_S16 ( .D(\accum_lpf[13][7] ), .RN(n4408), .CK(clk), .Q(
        n2849), .QN(n4322) );
  DFFTRX1 clk_r_REG321_S16 ( .D(\accum_lpf[13][3] ), .RN(n4408), .CK(clk), .Q(
        n2845), .QN(n4321) );
  DFFTRXL clk_r_REG475_S3 ( .D(n4372), .RN(n4412), .CK(clk), .Q(n2985), .QN(
        n4320) );
  DFFTRX1 clk_r_REG367_S8 ( .D(\accum_hpf[6][9] ), .RN(n4394), .CK(clk), .Q(
        n2755), .QN(n4319) );
  DFFTRX1 clk_r_REG213_S10 ( .D(\accum_lpf[7][9] ), .RN(n4414), .CK(clk), .Q(
        n2573), .QN(n4318) );
  DFFTRX1 clk_r_REG212_S9 ( .D(\accum_lpf[6][9] ), .RN(n4399), .CK(clk), .Q(
        n2693), .QN(n4317) );
  DFFTRX1 clk_r_REG196_S10 ( .D(\accum_lpf[7][11] ), .RN(n4395), .CK(clk), .Q(
        n2555), .QN(n4316) );
  DFFTRX1 clk_r_REG195_S9 ( .D(\accum_lpf[6][11] ), .RN(n4399), .CK(clk), .Q(
        n2695), .QN(n4315) );
  DFFTRX1 clk_r_REG354_S8 ( .D(\accum_hpf[6][11] ), .RN(n4396), .CK(clk), .Q(
        n2757), .QN(n4314) );
  DFFTRX1 clk_r_REG476_S3 ( .D(n4371), .RN(n4412), .CK(clk), .Q(n2986), .QN(
        n4313) );
  DFFTRX1 clk_r_REG450_S3 ( .D(\accum_lpf[0][4] ), .RN(n4403), .CK(clk), .Q(
        n2566), .QN(n4312) );
  DFFTRX1 clk_r_REG320_S16 ( .D(\accum_lpf[13][2] ), .RN(n4408), .CK(clk), .Q(
        n2844), .QN(n4311) );
  DFFTRX1 clk_r_REG164_S8 ( .D(\accum_hpf[13][8] ), .RN(n4409), .CK(clk), .Q(
        n2866), .QN(n4310) );
  DFFTRX1 clk_r_REG355_S9 ( .D(\accum_hpf[7][11] ), .RN(n4395), .CK(clk), .QN(
        n4309) );
  DFFTRX1 clk_r_REG284_S16 ( .D(\accum_lpf[13][6] ), .RN(n4408), .CK(clk), .Q(
        n2848), .QN(n4308) );
  DFFTRX1 clk_r_REG308_S16 ( .D(\accum_lpf[13][4] ), .RN(n4408), .CK(clk), .Q(
        n2846), .QN(n4307) );
  DFFTRX1 clk_r_REG345_S8 ( .D(\accum_hpf[6][13] ), .RN(n4405), .CK(clk), .Q(
        n2759), .QN(n4306) );
  DFFTRX1 clk_r_REG179_S10 ( .D(\accum_lpf[7][13] ), .RN(n4395), .CK(clk), .Q(
        n2553), .QN(n4305) );
  DFFTRX1 clk_r_REG467_S3 ( .D(n4730), .RN(n4395), .CK(clk), .Q(n2585), .QN(
        n4304) );
  DFFTRX1 clk_r_REG473_S3 ( .D(\accum_lpf[0][6] ), .RN(n4395), .CK(clk), .Q(
        n2593), .QN(n4302) );
  DFFTRX1 clk_r_REG477_S3 ( .D(n3820), .RN(n4412), .CK(clk), .QN(n4301) );
  DFFTRX1 clk_r_REG271_S3 ( .D(\accum_lpf[0][2] ), .RN(n4414), .CK(clk), .Q(
        n2516), .QN(n4300) );
  DFFTRX1 clk_r_REG159_S8 ( .D(\accum_hpf[13][9] ), .RN(n4409), .CK(clk), .QN(
        n4298) );
  DFFTRX1 clk_r_REG146_S8 ( .D(\accum_hpf[13][10] ), .RN(n1983), .CK(clk), 
        .QN(n4297) );
  DFFTRX1 clk_r_REG368_S9 ( .D(\accum_hpf[7][9] ), .RN(n4411), .CK(clk), .QN(
        n4296) );
  DFFTRX1 clk_r_REG466_S3 ( .D(\accum_lpf[0][5] ), .RN(n4401), .CK(clk), .QN(
        n4295) );
  DFFTRX1 clk_r_REG296_S16 ( .D(\accum_lpf[13][5] ), .RN(n4409), .CK(clk), .Q(
        n2847), .QN(n4294) );
  DFFTRX1 clk_r_REG3_S4 ( .D(\accum_lpf[15][15] ), .RN(n4412), .CK(clk), .QN(
        n4293) );
  DFFTRX1 clk_r_REG32_S17 ( .D(\accum_hpf[15][15] ), .RN(n4412), .CK(clk), 
        .QN(n4292) );
  DFFTRX1 clk_r_REG178_S16 ( .D(\accum_lpf[13][14] ), .RN(n4412), .CK(clk), 
        .Q(n2856), .QN(n4289) );
  DFFTRX1 clk_r_REG202_S16 ( .D(\accum_lpf[13][11] ), .RN(n4408), .CK(clk), 
        .Q(n2853), .QN(n4288) );
  DFFTRX1 clk_r_REG455_S5 ( .D(\accum_hpf[3][2] ), .RN(n4397), .CK(clk), .Q(
        n2940) );
  DFFTRX1 clk_r_REG78_S14 ( .D(\accum_lpf[12][1] ), .RN(n4396), .CK(clk), .Q(
        n2923) );
  DFFTRX1 clk_r_REG310_S6 ( .D(\accum_lpf[3][2] ), .RN(n4399), .CK(clk), .Q(
        n2908) );
  DFFTRX1 clk_r_REG69_S5 ( .D(\accum_lpf[3][1] ), .RN(n4410), .CK(clk), .Q(
        n2907) );
  DFFTRX1 clk_r_REG102_S4 ( .D(\accum_hpf[2][1] ), .RN(n4407), .CK(clk), .Q(
        n2891) );
  DFFTRX1 clk_r_REG68_S4 ( .D(\accum_lpf[2][1] ), .RN(n4398), .CK(clk), .Q(
        n2827) );
  DFFTRX1 clk_r_REG437_S7 ( .D(\accum_hpf[5][3] ), .RN(n4398), .CK(clk), .Q(
        n2813) );
  DFFTRX1 clk_r_REG76_S12 ( .D(\accum_lpf[10][1] ), .RN(n4394), .CK(clk), .Q(
        n2795) );
  DFFTRX1 clk_r_REG325_S8 ( .D(\accum_lpf[5][3] ), .RN(n4410), .CK(clk), .Q(
        n2781) );
  DFFTRX1 clk_r_REG71_S7 ( .D(\accum_lpf[5][1] ), .RN(n4394), .CK(clk), .Q(
        n2779) );
  DFFTRX1 clk_r_REG382_S8 ( .D(\accum_hpf[8][7] ), .RN(n4395), .CK(clk), .Q(
        n2753) );
  DFFTRX1 clk_r_REG401_S8 ( .D(\accum_hpf[8][6] ), .RN(n4396), .CK(clk), .Q(
        n2750) );
  DFFTRX1 clk_r_REG413_S8 ( .D(\accum_hpf[8][5] ), .RN(n1983), .CK(clk), .Q(
        n2747) );
  DFFTRX1 clk_r_REG426_S8 ( .D(\accum_hpf[8][4] ), .RN(n1983), .CK(clk), .Q(
        n2744) );
  DFFTRX1 clk_r_REG75_S11 ( .D(\accum_lpf[9][1] ), .RN(n4399), .CK(clk), .Q(
        n2701) );
  DFFTRX1 clk_r_REG255_S9 ( .D(\accum_lpf[8][7] ), .RN(n4405), .CK(clk), .Q(
        n2691) );
  DFFTRX1 clk_r_REG277_S9 ( .D(\accum_lpf[8][6] ), .RN(n4405), .CK(clk), .Q(
        n2688) );
  DFFTRX1 clk_r_REG289_S9 ( .D(\accum_lpf[8][5] ), .RN(n4405), .CK(clk), .Q(
        n2685) );
  DFFTRX1 clk_r_REG301_S9 ( .D(\accum_lpf[8][4] ), .RN(n4405), .CK(clk), .Q(
        n2682) );
  DFFTRX1 clk_r_REG72_S8 ( .D(\accum_lpf[8][1] ), .RN(n4405), .CK(clk), .Q(
        n2673) );
  DFFTRX1 clk_r_REG73_S9 ( .D(n2673), .RN(n4405), .CK(clk), .Q(n2672) );
  DFFTRX1 clk_r_REG74_S10 ( .D(n2672), .RN(n4405), .CK(clk), .Q(n2671) );
  DFFTRX1 clk_r_REG77_S13 ( .D(\accum_lpf[11][1] ), .RN(n4401), .CK(clk), .Q(
        n2623) );
  DFFTRX1 clk_r_REG70_S6 ( .D(\accum_lpf[4][1] ), .RN(n4411), .CK(clk), .Q(
        n2607) );
  DFFTRX1 clk_r_REG101_S3 ( .D(\accum_hpf[1][1] ), .RN(n4414), .CK(clk), .Q(
        n2508) );
  DFFTRX1 clk_r_REG67_S3 ( .D(\accum_lpf[1][1] ), .RN(n4414), .CK(clk), .Q(
        n2507) );
  DFFTRX1 clk_r_REG495_S3 ( .D(n3006), .RN(n4400), .CK(clk), .Q(n3005) );
  DFFTRX1 clk_r_REG494_S3 ( .D(n3005), .RN(n4403), .CK(clk), .Q(n3004) );
  DFFTRX1 clk_r_REG493_S3 ( .D(n3004), .RN(n4403), .CK(clk), .Q(n3003) );
  DFFTRX1 clk_r_REG492_S3 ( .D(n3003), .RN(n4403), .CK(clk), .Q(n3002) );
  DFFTRX1 clk_r_REG491_S3 ( .D(n3002), .RN(n4403), .CK(clk), .Q(n3001) );
  DFFTRX1 clk_r_REG490_S3 ( .D(n3001), .RN(n4403), .CK(clk), .Q(n3000) );
  DFFTRX1 clk_r_REG489_S3 ( .D(n3000), .RN(n4403), .CK(clk), .Q(n2999) );
  DFFTRX1 clk_r_REG488_S3 ( .D(n2999), .RN(n4403), .CK(clk), .Q(n2998) );
  DFFTRX1 clk_r_REG487_S3 ( .D(n2998), .RN(n4409), .CK(clk), .Q(n2997) );
  DFFTRX1 clk_r_REG486_S3 ( .D(n2997), .RN(n4413), .CK(clk), .Q(n2996) );
  DFFTRX1 clk_r_REG485_S3 ( .D(n2996), .RN(n4413), .CK(clk), .Q(n2995) );
  DFFTRX1 clk_r_REG484_S3 ( .D(n2995), .RN(n4413), .CK(clk), .Q(n2994) );
  DFFTRX1 clk_r_REG483_S3 ( .D(n2994), .RN(n4413), .CK(clk), .Q(n2993) );
  DFFTRX1 clk_r_REG462_S12 ( .D(\accum_hpf[10][2] ), .RN(n4413), .CK(clk), .Q(
        n2764) );
  DFFTRX1 clk_r_REG461_S11 ( .D(\accum_hpf[9][2] ), .RN(n4413), .CK(clk), .Q(
        n2718) );
  DFFTRX1 clk_r_REG460_S10 ( .D(n2737), .RN(n4413), .CK(clk), .Q(n2736) );
  DFFTRX1 clk_r_REG459_S9 ( .D(n2738), .RN(n4413), .CK(clk), .Q(n2737) );
  DFFTRX1 clk_r_REG458_S8 ( .D(\accum_hpf[8][2] ), .RN(n4413), .CK(clk), .Q(
        n2738) );
  DFFTRX1 clk_r_REG457_S7 ( .D(\accum_hpf[5][2] ), .RN(n4413), .CK(clk), .Q(
        n2812) );
  DFFTRX1 clk_r_REG456_S6 ( .D(\accum_hpf[4][2] ), .RN(n4413), .CK(clk), .Q(
        n2876) );
  DFFTRX1 clk_r_REG440_S10 ( .D(n2740), .RN(n4413), .CK(clk), .Q(n2739) );
  DFFTRX1 clk_r_REG439_S9 ( .D(n2741), .RN(n4406), .CK(clk), .Q(n2740) );
  DFFTRX1 clk_r_REG438_S8 ( .D(\accum_hpf[8][3] ), .RN(n4407), .CK(clk), .Q(
        n2741) );
  DFFTRX1 clk_r_REG427_S9 ( .D(n2744), .RN(n4410), .CK(clk), .Q(n2743) );
  DFFTRX1 clk_r_REG414_S9 ( .D(n2747), .RN(n4414), .CK(clk), .Q(n2746) );
  DFFTRX1 clk_r_REG402_S9 ( .D(n2750), .RN(n4400), .CK(clk), .Q(n2749) );
  DFFTRX1 clk_r_REG383_S9 ( .D(n2753), .RN(n4414), .CK(clk), .Q(n2752) );
  DFFTRX1 clk_r_REG328_S11 ( .D(n2678), .RN(n4402), .CK(clk), .Q(n2677) );
  DFFTRX1 clk_r_REG327_S10 ( .D(n2679), .RN(n4414), .CK(clk), .Q(n2678) );
  DFFTRX1 clk_r_REG326_S9 ( .D(\accum_lpf[8][3] ), .RN(n4407), .CK(clk), .Q(
        n2679) );
  DFFTRX1 clk_r_REG317_S13 ( .D(\accum_lpf[10][2] ), .RN(n4411), .CK(clk), .Q(
        n2796) );
  DFFTRX1 clk_r_REG316_S12 ( .D(\accum_lpf[9][2] ), .RN(n4411), .CK(clk), .Q(
        n2702) );
  DFFTRX1 clk_r_REG315_S11 ( .D(n2675), .RN(n4411), .CK(clk), .Q(n2674) );
  DFFTRX1 clk_r_REG314_S10 ( .D(n2676), .RN(n4411), .CK(clk), .Q(n2675) );
  DFFTRX1 clk_r_REG313_S9 ( .D(\accum_lpf[8][2] ), .RN(n4411), .CK(clk), .Q(
        n2676) );
  DFFTRX1 clk_r_REG312_S8 ( .D(\accum_lpf[5][2] ), .RN(n4411), .CK(clk), .Q(
        n2780) );
  DFFTRX1 clk_r_REG311_S7 ( .D(\accum_lpf[4][2] ), .RN(n4411), .CK(clk), .Q(
        n2608) );
  DFFTRX1 clk_r_REG302_S10 ( .D(n2682), .RN(n4411), .CK(clk), .Q(n2681) );
  DFFTRX1 clk_r_REG290_S10 ( .D(n2685), .RN(n4393), .CK(clk), .Q(n2684) );
  DFFTRX1 clk_r_REG278_S10 ( .D(n2688), .RN(n4393), .CK(clk), .Q(n2687) );
  DFFTRX1 clk_r_REG256_S10 ( .D(n2691), .RN(n4393), .CK(clk), .Q(n2690) );
  DFFTRX1 clk_r_REG112_S14 ( .D(\accum_hpf[12][1] ), .RN(n4393), .CK(clk), .Q(
        n2655) );
  DFFTRX1 clk_r_REG111_S13 ( .D(\accum_hpf[11][1] ), .RN(n4393), .CK(clk), .Q(
        n2639) );
  DFFTRX1 clk_r_REG110_S12 ( .D(\accum_hpf[10][1] ), .RN(n4393), .CK(clk), .Q(
        n2763) );
  DFFTRX1 clk_r_REG109_S11 ( .D(\accum_hpf[9][1] ), .RN(n4393), .CK(clk), .Q(
        n2717) );
  DFFTRX1 clk_r_REG108_S10 ( .D(n2734), .RN(n4393), .CK(clk), .Q(n2733) );
  DFFTRX1 clk_r_REG107_S9 ( .D(n2735), .RN(n4396), .CK(clk), .Q(n2734) );
  DFFTRX1 clk_r_REG106_S8 ( .D(\accum_hpf[8][1] ), .RN(n4410), .CK(clk), .Q(
        n2735) );
  DFFTRX1 clk_r_REG105_S7 ( .D(\accum_hpf[5][1] ), .RN(n4405), .CK(clk), .Q(
        n2811) );
  DFFTRX1 clk_r_REG104_S6 ( .D(\accum_hpf[4][1] ), .RN(n4399), .CK(clk), .Q(
        n2875) );
  DFFTRX1 clk_r_REG103_S5 ( .D(\accum_hpf[3][1] ), .RN(n4410), .CK(clk), .Q(
        n2939) );
  DFFTRX1 clk_r_REG16_S15 ( .D(\accum_hpf[13][16] ), .RN(n4409), .CK(clk), .Q(
        n2874) );
  DFFTRX2 clk_r_REG9_S8 ( .D(\accum_hpf[6][16] ), .RN(n4394), .CK(clk), .Q(
        n2762) );
  DFFTRX1 clk_r_REG499_S3 ( .D(zero), .RN(n4734), .CK(clk), .Q(n2983) );
  DFFTRX1 clk_r_REG128_S16 ( .D(\accum_hpf[14][1] ), .RN(n4402), .CK(clk), .Q(
        n2528) );
  DFFTRX1 clk_r_REG99_S16 ( .D(\accum_lpf[14][1] ), .RN(n4414), .CK(clk), .Q(
        n2509) );
  DFFTRX1 clk_r_REG53_S15 ( .D(N268), .RN(n4403), .CK(clk), .Q(n2858) );
  DFFTRX1 clk_r_REG189_S12 ( .D(\accum_lpf[9][12] ), .RN(n4400), .CK(clk), .Q(
        n2712) );
  DFFTRX2 clk_r_REG17_S16 ( .D(\accum_hpf[14][16] ), .RN(n4414), .CK(clk), .Q(
        n2512) );
  DFFTRX2 clk_r_REG52_S14 ( .D(\accum_lpf[12][16] ), .RN(n4397), .CK(clk), .Q(
        n2938) );
  DFFTRX2 clk_r_REG26_S11 ( .D(\accum_hpf[9][15] ), .RN(n4399), .CK(clk), .Q(
        n2731) );
  DFFTRX1 clk_r_REG170_S8 ( .D(\accum_lpf[5][10] ), .RN(n4398), .CK(clk), .Q(
        n2788) );
  DFFTRX1 clk_r_REG205_S11 ( .D(\accum_lpf[8][10] ), .RN(n4396), .CK(clk), .Q(
        n2560) );
  DFFTRX1 clk_r_REG270_S3 ( .D(\accum_hpf[8][10] ), .RN(n4414), .CK(clk), .Q(
        n2515) );
  DFFTRX1 clk_r_REG347_S10 ( .D(\accum_hpf[8][13] ), .RN(n4403), .CK(clk), .Q(
        n2544) );
  DFFTRX1 clk_r_REG370_S5 ( .D(\accum_hpf[3][8] ), .RN(n4397), .CK(clk), .Q(
        n2946) );
  DFFTRX1 clk_r_REG338_S4 ( .D(\accum_hpf[2][7] ), .RN(n4407), .CK(clk), .Q(
        n2897) );
  DFFTRX1 clk_r_REG211_S8 ( .D(\accum_lpf[5][9] ), .RN(n4395), .CK(clk), .Q(
        n2787) );
  DFFTRX1 clk_r_REG155_S4 ( .D(\accum_hpf[9][9] ), .RN(n4406), .CK(clk), .Q(
        n2725) );
  DFFTRX1 clk_r_REG260_S14 ( .D(\accum_lpf[11][7] ), .RN(n4401), .CK(clk), .Q(
        n2629) );
  DFFTRX1 clk_r_REG217_S14 ( .D(\accum_lpf[11][9] ), .RN(n4401), .CK(clk), .Q(
        n2631) );
  DFFTRX1 clk_r_REG221_S8 ( .D(\accum_lpf[5][13] ), .RN(n4398), .CK(clk), .Q(
        n2791) );
  DFFTRX1 clk_r_REG180_S11 ( .D(\accum_lpf[8][13] ), .RN(n4396), .CK(clk), .Q(
        n2557) );
  DFFTRX1 clk_r_REG251_S5 ( .D(\accum_lpf[2][7] ), .RN(n4398), .CK(clk), .Q(
        n2833) );
  DFFTRX1 clk_r_REG130_S4 ( .D(\accum_hpf[9][10] ), .RN(n4406), .CK(clk), .Q(
        n2726) );
  DFFTRX1 clk_r_REG215_S12 ( .D(\accum_lpf[9][9] ), .RN(n4400), .CK(clk), .Q(
        n2709) );
  DFFTRX1 clk_r_REG125_S16 ( .D(\accum_hpf[14][4] ), .RN(n4401), .CK(clk), .Q(
        n2582) );
  DFFTRX1 clk_r_REG153_S4 ( .D(\accum_hpf[9][12] ), .RN(n4406), .CK(clk), .Q(
        n2728) );
  DFFTRX1 clk_r_REG282_S14 ( .D(\accum_lpf[11][6] ), .RN(n4395), .CK(clk), .Q(
        n2628) );
  DFFTRX1 clk_r_REG406_S13 ( .D(\accum_hpf[11][6] ), .RN(n4400), .CK(clk), .Q(
        n2644) );
  DFFTRX2 clk_r_REG55_S5 ( .D(\accum_lpf[3][15] ), .RN(n4402), .CK(clk), .Q(
        n2921) );
  DFFTRX2 clk_r_REG230_S6 ( .D(\accum_lpf[3][12] ), .RN(n4400), .CK(clk), .Q(
        n2918) );
  DFFTRX2 clk_r_REG8_S7 ( .D(\accum_hpf[5][16] ), .RN(n4398), .CK(clk), .Q(
        n2826) );
  DFFTRX2 clk_r_REG50_S12 ( .D(\accum_lpf[10][16] ), .RN(n4407), .CK(clk), .Q(
        n2810) );
  DFFTRX2 clk_r_REG62_S12 ( .D(\accum_lpf[10][15] ), .RN(n4398), .CK(clk), .Q(
        n2809) );
  DFFTRX2 clk_r_REG190_S13 ( .D(\accum_lpf[10][12] ), .RN(n4394), .CK(clk), 
        .Q(n2806) );
  DFFTRX2 clk_r_REG27_S12 ( .D(\accum_hpf[10][15] ), .RN(n4411), .CK(clk), .Q(
        n2777) );
  DFFTRX2 clk_r_REG14_S13 ( .D(\accum_hpf[11][16] ), .RN(n4404), .CK(clk), .Q(
        n2654) );
  DFFTRX2 clk_r_REG138_S6 ( .D(\accum_hpf[11][12] ), .RN(n4404), .CK(clk), .Q(
        n2650) );
  DFFTRX1 clk_r_REG44_S6 ( .D(\accum_lpf[4][16] ), .RN(n4406), .CK(clk), .Q(
        n2622) );
  DFFTRX2 clk_r_REG359_S6 ( .D(\accum_hpf[4][14] ), .RN(n4393), .CK(clk), .Q(
        n2888) );
  DFFTRX2 clk_r_REG7_S6 ( .D(\accum_hpf[4][16] ), .RN(n4407), .CK(clk), .Q(
        n2890) );
  DFFTRX2 clk_r_REG231_S6 ( .D(\accum_lpf[3][13] ), .RN(n4400), .CK(clk), .Q(
        n2919) );
  DFFTRX2 clk_r_REG43_S5 ( .D(\accum_lpf[3][16] ), .RN(n1983), .CK(clk), .Q(
        n2922) );
  DFFTRX2 clk_r_REG6_S5 ( .D(\accum_hpf[3][16] ), .RN(n4397), .CK(clk), .Q(
        n2954) );
  DFFTRX1 clk_r_REG240_S6 ( .D(\accum_lpf[3][8] ), .RN(n4393), .CK(clk), .Q(
        n2914) );
  DFFTRX1 clk_r_REG252_S6 ( .D(\accum_lpf[3][7] ), .RN(n4397), .CK(clk), .Q(
        n2913) );
  DFFTRX1 clk_r_REG274_S6 ( .D(\accum_lpf[3][6] ), .RN(n4397), .CK(clk), .Q(
        n2912) );
  DFFTRX2 clk_r_REG5_S4 ( .D(\accum_hpf[2][16] ), .RN(n4410), .CK(clk), .Q(
        n2906) );
  DFFTRX2 clk_r_REG390_S4 ( .D(\accum_hpf[2][14] ), .RN(n4410), .CK(clk), .Q(
        n2904) );
  DFFTRX1 clk_r_REG393_S4 ( .D(\accum_hpf[2][13] ), .RN(n4410), .CK(clk), .Q(
        n2903) );
  DFFTRX1 clk_r_REG365_S6 ( .D(\accum_hpf[4][9] ), .RN(n4409), .CK(clk), .Q(
        n2883) );
  DFFTRX1 clk_r_REG42_S4 ( .D(\accum_lpf[2][16] ), .RN(n1983), .CK(clk), .Q(
        n2842) );
  DFFTRX1 clk_r_REG238_S5 ( .D(\accum_lpf[2][14] ), .RN(n4409), .CK(clk), .Q(
        n2840) );
  DFFTRX1 clk_r_REG236_S5 ( .D(\accum_lpf[2][13] ), .RN(n4409), .CK(clk), .Q(
        n2839) );
  DFFTRX1 clk_r_REG361_S7 ( .D(\accum_hpf[5][10] ), .RN(n4408), .CK(clk), .Q(
        n2820) );
  DFFTRX1 clk_r_REG247_S13 ( .D(\accum_lpf[10][8] ), .RN(n4394), .CK(clk), .Q(
        n2802) );
  DFFTRX1 clk_r_REG259_S13 ( .D(\accum_lpf[10][7] ), .RN(n4405), .CK(clk), .Q(
        n2801) );
  DFFTRX1 clk_r_REG281_S13 ( .D(\accum_lpf[10][6] ), .RN(n4394), .CK(clk), .Q(
        n2800) );
  DFFTRX1 clk_r_REG161_S5 ( .D(\accum_hpf[10][8] ), .RN(n4401), .CK(clk), .Q(
        n2770) );
  DFFTRX1 clk_r_REG405_S12 ( .D(\accum_hpf[10][6] ), .RN(n4396), .CK(clk), .Q(
        n2768) );
  DFFTRX2 clk_r_REG12_S11 ( .D(\accum_hpf[9][16] ), .RN(n4399), .CK(clk), .Q(
        n2732) );
  DFFTRX2 clk_r_REG29_S14 ( .D(\accum_hpf[12][15] ), .RN(n4405), .CK(clk), .Q(
        n2669) );
  DFFTRX1 clk_r_REG387_S13 ( .D(\accum_hpf[11][7] ), .RN(n4400), .CK(clk), .Q(
        n2645) );
  DFFTRX1 clk_r_REG418_S13 ( .D(\accum_hpf[11][5] ), .RN(n4401), .CK(clk), .Q(
        n2643) );
  DFFTRX2 clk_r_REG183_S14 ( .D(\accum_lpf[11][13] ), .RN(n4395), .CK(clk), 
        .Q(n2635) );
  DFFTRX1 clk_r_REG169_S7 ( .D(\accum_lpf[4][9] ), .RN(n4411), .CK(clk), .Q(
        n2615) );
  DFFTRX1 clk_r_REG11_S10 ( .D(\accum_hpf[8][16] ), .RN(n4400), .CK(clk), .Q(
        n2606) );
  DFFTRX1 clk_r_REG66_S3 ( .D(\accum_lpf[1][16] ), .RN(n4403), .CK(clk), .Q(
        n2506) );
  DFFTRX1 clk_r_REG394_S4 ( .D(\accum_hpf[2][9] ), .RN(n4407), .CK(clk), .Q(
        n2899) );
  DFFTRX1 clk_r_REG167_S5 ( .D(\accum_lpf[2][9] ), .RN(n4398), .CK(clk), .Q(
        n2835) );
  DFFTRX1 clk_r_REG248_S14 ( .D(\accum_lpf[11][8] ), .RN(n4395), .CK(clk), .Q(
        n2630) );
  DFFTRX1 clk_r_REG100_S16 ( .D(\accum_lpf[14][2] ), .RN(n4402), .CK(clk), .Q(
        n2577) );
  DFFTRX1 clk_r_REG127_S16 ( .D(\accum_hpf[14][2] ), .RN(n4402), .CK(clk), .Q(
        n2524) );
  DFFTRX2 clk_r_REG20_S5 ( .D(\accum_hpf[3][15] ), .RN(n4397), .CK(clk), .Q(
        n2953) );
  DFFTRX2 clk_r_REG376_S5 ( .D(\accum_hpf[3][12] ), .RN(n4397), .CK(clk), .Q(
        n2950) );
  DFFTRX1 clk_r_REG364_S5 ( .D(\accum_hpf[3][9] ), .RN(n4397), .CK(clk), .Q(
        n2947) );
  DFFTRX1 clk_r_REG209_S15 ( .D(\accum_lpf[12][10] ), .RN(n1983), .CK(clk), 
        .Q(n2932) );
  DFFTRX1 clk_r_REG218_S15 ( .D(\accum_lpf[12][9] ), .RN(n4399), .CK(clk), .Q(
        n2931) );
  DFFTRX1 clk_r_REG249_S15 ( .D(\accum_lpf[12][8] ), .RN(n4407), .CK(clk), .Q(
        n2930) );
  DFFTRX1 clk_r_REG261_S15 ( .D(\accum_lpf[12][7] ), .RN(n4411), .CK(clk), .Q(
        n2929) );
  DFFTRX1 clk_r_REG283_S15 ( .D(\accum_lpf[12][6] ), .RN(n4405), .CK(clk), .Q(
        n2928) );
  DFFTRX1 clk_r_REG295_S15 ( .D(\accum_lpf[12][5] ), .RN(n4407), .CK(clk), .Q(
        n2927) );
  DFFTRX1 clk_r_REG232_S6 ( .D(\accum_lpf[3][11] ), .RN(n4398), .CK(clk), .Q(
        n2917) );
  DFFTRX1 clk_r_REG19_S4 ( .D(\accum_hpf[2][15] ), .RN(n4410), .CK(clk), .Q(
        n2905) );
  DFFTRX1 clk_r_REG396_S4 ( .D(\accum_hpf[2][12] ), .RN(n4410), .CK(clk), .Q(
        n2902) );
  DFFTRX1 clk_r_REG395_S4 ( .D(\accum_hpf[2][11] ), .RN(n4410), .CK(clk), .Q(
        n2901) );
  DFFTRX1 clk_r_REG392_S4 ( .D(\accum_hpf[2][10] ), .RN(n4407), .CK(clk), .Q(
        n2900) );
  DFFTRX1 clk_r_REG391_S4 ( .D(\accum_hpf[2][8] ), .RN(n4407), .CK(clk), .Q(
        n2898) );
  DFFTRX1 clk_r_REG360_S6 ( .D(\accum_hpf[4][10] ), .RN(n4411), .CK(clk), .Q(
        n2884) );
  DFFTRX1 clk_r_REG371_S6 ( .D(\accum_hpf[4][8] ), .RN(n4409), .CK(clk), .Q(
        n2882) );
  DFFTRX1 clk_r_REG54_S4 ( .D(\accum_lpf[2][15] ), .RN(n4409), .CK(clk), .Q(
        n2841) );
  DFFTRX1 clk_r_REG237_S5 ( .D(\accum_lpf[2][12] ), .RN(n4409), .CK(clk), .Q(
        n2838) );
  DFFTRX1 clk_r_REG235_S5 ( .D(\accum_lpf[2][11] ), .RN(n4409), .CK(clk), .Q(
        n2837) );
  DFFTRX1 clk_r_REG234_S5 ( .D(\accum_lpf[2][10] ), .RN(n4409), .CK(clk), .Q(
        n2836) );
  DFFTRX2 clk_r_REG349_S7 ( .D(\accum_hpf[5][12] ), .RN(n4403), .CK(clk), .Q(
        n2822) );
  DFFTRX1 clk_r_REG353_S7 ( .D(\accum_hpf[5][11] ), .RN(n4409), .CK(clk), .Q(
        n2821) );
  DFFTRX1 clk_r_REG216_S13 ( .D(\accum_lpf[10][9] ), .RN(n4401), .CK(clk), .Q(
        n2803) );
  DFFTRX2 clk_r_REG57_S7 ( .D(\accum_lpf[5][15] ), .RN(n4398), .CK(clk), .Q(
        n2793) );
  DFFTRX1 clk_r_REG148_S5 ( .D(\accum_hpf[10][11] ), .RN(n4396), .CK(clk), .Q(
        n2773) );
  DFFTRX1 clk_r_REG156_S5 ( .D(\accum_hpf[10][9] ), .RN(n4396), .CK(clk), .Q(
        n2771) );
  DFFTRX1 clk_r_REG154_S4 ( .D(\accum_hpf[9][13] ), .RN(n4406), .CK(clk), .Q(
        n2729) );
  DFFTRX1 clk_r_REG206_S12 ( .D(\accum_lpf[9][10] ), .RN(n4400), .CK(clk), .Q(
        n2710) );
  DFFTRX2 clk_r_REG133_S7 ( .D(\accum_hpf[12][14] ), .RN(n4405), .CK(clk), .Q(
        n2668) );
  DFFTRX2 clk_r_REG135_S7 ( .D(\accum_hpf[12][13] ), .RN(n4414), .CK(clk), .Q(
        n2667) );
  DFFTRX2 clk_r_REG139_S7 ( .D(\accum_hpf[12][12] ), .RN(n4399), .CK(clk), .Q(
        n2666) );
  DFFTRX2 clk_r_REG142_S7 ( .D(\accum_hpf[12][11] ), .RN(n4399), .CK(clk), .Q(
        n2665) );
  DFFTRX1 clk_r_REG145_S7 ( .D(\accum_hpf[12][10] ), .RN(n4399), .CK(clk), .Q(
        n2664) );
  DFFTRX1 clk_r_REG158_S7 ( .D(\accum_hpf[12][9] ), .RN(n4399), .CK(clk), .Q(
        n2663) );
  DFFTRX1 clk_r_REG163_S7 ( .D(\accum_hpf[12][8] ), .RN(n4399), .CK(clk), .Q(
        n2662) );
  DFFTRX1 clk_r_REG388_S14 ( .D(\accum_hpf[12][7] ), .RN(n4404), .CK(clk), .Q(
        n2661) );
  DFFTRX1 clk_r_REG407_S14 ( .D(\accum_hpf[12][6] ), .RN(n4404), .CK(clk), .Q(
        n2660) );
  DFFTRX1 clk_r_REG419_S14 ( .D(\accum_hpf[12][5] ), .RN(n4404), .CK(clk), .Q(
        n2659) );
  DFFTRX1 clk_r_REG144_S6 ( .D(\accum_hpf[11][10] ), .RN(n4404), .CK(clk), .Q(
        n2648) );
  DFFTRX1 clk_r_REG162_S6 ( .D(\accum_hpf[11][8] ), .RN(n4404), .CK(clk), .Q(
        n2646) );
  DFFTRX2 clk_r_REG63_S13 ( .D(\accum_lpf[11][15] ), .RN(n4401), .CK(clk), .Q(
        n2637) );
  DFFTRX2 clk_r_REG191_S14 ( .D(\accum_lpf[11][12] ), .RN(n4395), .CK(clk), 
        .Q(n2634) );
  DFFTRX1 clk_r_REG228_S7 ( .D(\accum_lpf[4][10] ), .RN(n4414), .CK(clk), .Q(
        n2616) );
  DFFTRX1 clk_r_REG241_S7 ( .D(\accum_lpf[4][8] ), .RN(n4414), .CK(clk), .Q(
        n2614) );
  DFFTRX1 clk_r_REG25_S10 ( .D(\accum_hpf[8][15] ), .RN(n4395), .CK(clk), .Q(
        n2594) );
  DFFTRX1 clk_r_REG263_S4 ( .D(\accum_lpf[1][8] ), .RN(n4401), .CK(clk), .Q(
        n2580) );
  DFFTRX1 clk_r_REG452_S3 ( .D(\accum_hpf[1][7] ), .RN(n4412), .CK(clk), .Q(
        n2572) );
  DFFTRX1 clk_r_REG352_S10 ( .D(\accum_hpf[8][12] ), .RN(n4396), .CK(clk), .Q(
        n2571) );
  DFFTRX1 clk_r_REG166_S4 ( .D(\accum_lpf[1][7] ), .RN(n4396), .CK(clk), .Q(
        n2570) );
  DFFTRX1 clk_r_REG451_S3 ( .D(\accum_hpf[1][4] ), .RN(n4396), .CK(clk), .Q(
        n2569) );
  DFFTRX1 clk_r_REG333_S4 ( .D(\accum_lpf[1][6] ), .RN(n4396), .CK(clk), .Q(
        n2567) );
  DFFTRX1 clk_r_REG124_S16 ( .D(\accum_hpf[14][5] ), .RN(n4396), .CK(clk), .Q(
        n2564) );
  DFFTRX1 clk_r_REG197_S11 ( .D(\accum_lpf[8][11] ), .RN(n4396), .CK(clk), .Q(
        n2559) );
  DFFTRX1 clk_r_REG188_S11 ( .D(\accum_lpf[8][12] ), .RN(n4396), .CK(clk), .Q(
        n2558) );
  DFFTRX1 clk_r_REG356_S10 ( .D(\accum_hpf[8][11] ), .RN(n4395), .CK(clk), .Q(
        n2548) );
  DFFTRX1 clk_r_REG269_S4 ( .D(\accum_lpf[1][9] ), .RN(n4403), .CK(clk), .Q(
        n2545) );
  DFFTRX1 clk_r_REG344_S10 ( .D(\accum_hpf[8][14] ), .RN(n4402), .CK(clk), .Q(
        n2537) );
  DFFTRX1 clk_r_REG173_S11 ( .D(\accum_lpf[8][14] ), .RN(n4403), .CK(clk), .Q(
        n2535) );
  DFFTRX1 clk_r_REG60_S10 ( .D(\accum_lpf[8][15] ), .RN(n1983), .CK(clk), .Q(
        n2532) );
  DFFTRX1 clk_r_REG421_S3 ( .D(\accum_hpf[1][3] ), .RN(n4402), .CK(clk), .Q(
        n2522) );
  DFFTRX1 clk_r_REG337_S3 ( .D(\accum_hpf[1][5] ), .RN(n4414), .CK(clk), .Q(
        n2519) );
  DFFTRX1 clk_r_REG334_S4 ( .D(\accum_lpf[1][5] ), .RN(n4414), .CK(clk), .Q(
        n2517) );
  DFFTRX2 clk_r_REG192_S15 ( .D(\accum_lpf[12][12] ), .RN(n1983), .CK(clk), 
        .Q(n2934) );
  DFFTRX2 clk_r_REG229_S6 ( .D(\accum_lpf[3][14] ), .RN(n1983), .CK(clk), .Q(
        n2920) );
  DFFTRX2 clk_r_REG22_S7 ( .D(\accum_hpf[5][15] ), .RN(n4398), .CK(clk), .Q(
        n2825) );
  DFFTRX2 clk_r_REG348_S7 ( .D(\accum_hpf[5][14] ), .RN(n4398), .CK(clk), .Q(
        n2824) );
  DFFTRX1 clk_r_REG181_S12 ( .D(\accum_lpf[9][13] ), .RN(n4400), .CK(clk), .Q(
        n2713) );
  DFFTRX2 clk_r_REG56_S6 ( .D(\accum_lpf[4][15] ), .RN(n4399), .CK(clk), .Q(
        n2621) );
  DFFTRX1 clk_r_REG227_S7 ( .D(\accum_lpf[4][13] ), .RN(n4402), .CK(clk), .Q(
        n2619) );
  DFFTRX2 clk_r_REG21_S6 ( .D(\accum_hpf[4][15] ), .RN(n4407), .CK(clk), .Q(
        n2889) );
  DFFTRX1 clk_r_REG453_S3 ( .D(\accum_hpf[1][2] ), .RN(n4401), .CK(clk), .Q(
        n2579) );
  DFFTRX1 clk_r_REG157_S6 ( .D(\accum_hpf[11][9] ), .RN(n4404), .CK(clk), .Q(
        n2647) );
  DFFTRX1 clk_r_REG126_S16 ( .D(\accum_hpf[14][3] ), .RN(n4401), .CK(clk), .Q(
        n2583) );
  DFFTRX1 clk_r_REG233_S6 ( .D(\accum_lpf[3][10] ), .RN(n4397), .CK(clk), .Q(
        n2916) );
  DFFTRX1 clk_r_REG207_S13 ( .D(\accum_lpf[10][10] ), .RN(n4394), .CK(clk), 
        .Q(n2804) );
  DFFTRX1 clk_r_REG131_S5 ( .D(\accum_hpf[10][10] ), .RN(n4396), .CK(clk), .Q(
        n2772) );
  DFFTRX2 clk_r_REG224_S7 ( .D(\accum_lpf[4][12] ), .RN(n4402), .CK(clk), .Q(
        n2618) );
  DFFTRX1 clk_r_REG225_S7 ( .D(\accum_lpf[4][11] ), .RN(n4414), .CK(clk), .Q(
        n2617) );
  DFFTRX1 clk_r_REG366_S7 ( .D(\accum_hpf[5][9] ), .RN(n4412), .CK(clk), .Q(
        n2819) );
  DFFTRX1 clk_r_REG151_S4 ( .D(\accum_hpf[9][11] ), .RN(n4406), .CK(clk), .Q(
        n2727) );
  DFFTRX1 clk_r_REG198_S12 ( .D(\accum_lpf[9][11] ), .RN(n4400), .CK(clk), .Q(
        n2711) );
  DFFTRX1 clk_r_REG246_S12 ( .D(\accum_lpf[9][8] ), .RN(n4400), .CK(clk), .Q(
        n2708) );
  DFFTRX1 clk_r_REG239_S5 ( .D(\accum_lpf[2][8] ), .RN(n4398), .CK(clk), .Q(
        n2834) );
  DFFTRX1 clk_r_REG446_S3 ( .D(\accum_hpf[1][8] ), .RN(n4402), .CK(clk), .Q(
        n2530) );
  DFFTRX1 clk_r_REG168_S6 ( .D(\accum_lpf[3][9] ), .RN(n4393), .CK(clk), .Q(
        n2915) );
  DFFTRX1 clk_r_REG116_S16 ( .D(\accum_hpf[14][14] ), .RN(n4395), .CK(clk), 
        .Q(n2600) );
  DFFTRX1 clk_r_REG115_S16 ( .D(\accum_hpf[14][12] ), .RN(n4401), .CK(clk), 
        .Q(n2592) );
  DFFTRX1 clk_r_REG24_S9 ( .D(\accum_hpf[7][15] ), .RN(n4395), .CK(clk), .Q(
        n2549) );
  DFFTRX1 clk_r_REG219_S16 ( .D(\accum_lpf[13][9] ), .RN(n4408), .CK(clk), .Q(
        n2851) );
  DFFTRX1 clk_r_REG93_S16 ( .D(\accum_lpf[14][13] ), .RN(n4402), .CK(clk), .Q(
        n2604) );
  DFFTRX1 clk_r_REG114_S16 ( .D(\accum_hpf[14][13] ), .RN(n4397), .CK(clk), 
        .Q(n2602) );
  DFFTRX2 clk_r_REG58_S8 ( .D(\accum_lpf[6][15] ), .RN(n4399), .CK(clk), .Q(
        n2699) );
  DFFTRX1 clk_r_REG165_S3 ( .D(\accum_lpf[0][7] ), .RN(n4414), .CK(clk), .Q(
        n2513) );
  DFFTRX1 clk_r_REG143_S8 ( .D(\accum_hpf[13][11] ), .RN(n4409), .CK(clk), .Q(
        n2869) );
  DFFTRX1 clk_r_REG140_S8 ( .D(\accum_hpf[13][12] ), .RN(n4409), .CK(clk), .Q(
        n2870) );
  DFFTRX1 clk_r_REG501_S3 ( .D(addr[8]), .RN(n4734), .CK(clk), .Q(n2981) );
  DFFTRX1 clk_r_REG502_S3 ( .D(addr[7]), .RN(n4734), .CK(clk), .Q(n2980) );
  DFFTRX1 clk_r_REG503_S3 ( .D(addr[6]), .RN(n4734), .CK(clk), .Q(n2979) );
  DFFTRX1 clk_r_REG504_S3 ( .D(addr[5]), .RN(n4734), .CK(clk), .Q(n2978) );
  DFFTRX1 clk_r_REG505_S3 ( .D(addr[4]), .RN(n4734), .CK(clk), .Q(n2977) );
  DFFTRX1 clk_r_REG506_S3 ( .D(addr[3]), .RN(n4734), .CK(clk), .Q(n2976) );
  DFFTRX1 clk_r_REG307_S15 ( .D(\accum_lpf[12][4] ), .RN(n4401), .CK(clk), .Q(
        n2926) );
  DFFTRX1 clk_r_REG322_S15 ( .D(\accum_lpf[12][3] ), .RN(n4401), .CK(clk), .Q(
        n2925) );
  DFFTRX1 clk_r_REG432_S14 ( .D(\accum_hpf[12][4] ), .RN(n4404), .CK(clk), .Q(
        n2658) );
  DFFTRX1 clk_r_REG444_S14 ( .D(\accum_hpf[12][3] ), .RN(n4404), .CK(clk), .Q(
        n2657) );
  DFFTRX1 clk_r_REG335_S4 ( .D(\accum_lpf[1][4] ), .RN(n4396), .CK(clk), .Q(
        n2568) );
  DFFTRX1 clk_r_REG336_S4 ( .D(\accum_lpf[1][3] ), .RN(n4402), .CK(clk), .Q(
        n2520) );
  DFFTRXL clk_r_REG481_S3 ( .D(n3907), .RN(n4393), .CK(clk), .Q(n2991) );
  DFFTRX1 clk_r_REG479_S3 ( .D(n4373), .RN(n4412), .CK(clk), .Q(n2989) );
  DFFTRX1 clk_r_REG203_S9 ( .D(\accum_lpf[6][10] ), .RN(n4399), .CK(clk), .Q(
        n2694) );
  DFFTRX1 clk_r_REG369_S10 ( .D(\accum_hpf[8][9] ), .RN(n4402), .CK(clk), .Q(
        n2576) );
  DFFTRX1 clk_r_REG214_S11 ( .D(\accum_lpf[8][9] ), .RN(n4411), .CK(clk), .Q(
        n2574) );
  DFFTRX1 clk_r_REG204_S10 ( .D(\accum_lpf[7][10] ), .RN(n4396), .CK(clk), .Q(
        n2556) );
  DFFTRX1 clk_r_REG415_S10 ( .D(n2746), .RN(n4410), .CK(clk), .Q(n2745) );
  DFFTRX1 clk_r_REG384_S10 ( .D(n2752), .RN(n4402), .CK(clk), .Q(n2751) );
  DFFTRX1 clk_r_REG318_S14 ( .D(\accum_lpf[11][2] ), .RN(n4411), .CK(clk), .Q(
        n2624) );
  DFFTRX1 clk_r_REG291_S11 ( .D(n2684), .RN(n4393), .CK(clk), .Q(n2683) );
  DFFTRX1 clk_r_REG257_S11 ( .D(n2690), .RN(n4393), .CK(clk), .Q(n2689) );
  DFFTRX1 clk_r_REG373_S8 ( .D(\accum_hpf[6][8] ), .RN(n4396), .CK(clk), .Q(
        n2754) );
  DFFTRX1 clk_r_REG243_S9 ( .D(\accum_lpf[6][8] ), .RN(n4399), .CK(clk), .Q(
        n2692) );
  DFFTRX1 clk_r_REG244_S10 ( .D(\accum_lpf[7][8] ), .RN(n4402), .CK(clk), .Q(
        n2525) );
  DFFTRX1 clk_r_REG297_S5 ( .D(\accum_lpf[2][4] ), .RN(n4398), .CK(clk), .Q(
        n2830) );
  DFFTRX1 clk_r_REG254_S8 ( .D(\accum_lpf[5][7] ), .RN(n4396), .CK(clk), .Q(
        n2785) );
  DFFTRX1 clk_r_REG160_S4 ( .D(\accum_hpf[9][8] ), .RN(n4406), .CK(clk), .Q(
        n2724) );
  DFFTRX1 clk_r_REG429_S11 ( .D(\accum_hpf[9][4] ), .RN(n4406), .CK(clk), .Q(
        n2720) );
  DFFTRX1 clk_r_REG410_S5 ( .D(\accum_hpf[3][5] ), .RN(n4397), .CK(clk), .Q(
        n2943) );
  DFFTRX1 clk_r_REG398_S5 ( .D(\accum_hpf[3][6] ), .RN(n4397), .CK(clk), .Q(
        n2944) );
  DFFTRX1 clk_r_REG319_S15 ( .D(\accum_lpf[12][2] ), .RN(n4393), .CK(clk), .Q(
        n2924) );
  DFFTRX1 clk_r_REG309_S5 ( .D(\accum_lpf[2][2] ), .RN(n4398), .CK(clk), .Q(
        n2828) );
  DFFTRX1 clk_r_REG242_S8 ( .D(\accum_lpf[5][8] ), .RN(n4394), .CK(clk), .Q(
        n2786) );
  DFFTRX1 clk_r_REG300_S8 ( .D(\accum_lpf[5][4] ), .RN(n4394), .CK(clk), .Q(
        n2782) );
  DFFTRX1 clk_r_REG272_S4 ( .D(\accum_lpf[1][2] ), .RN(n4411), .CK(clk), .Q(
        n2578) );
  DFFTRX1 clk_r_REG245_S11 ( .D(\accum_lpf[8][8] ), .RN(n4402), .CK(clk), .Q(
        n2526) );
  DFFTRX1 clk_r_REG129_S3 ( .D(\accum_hpf[8][8] ), .RN(n4414), .CK(clk), .Q(
        n2510) );
  DFFTRX1 clk_r_REG303_S11 ( .D(n2681), .RN(n4411), .CK(clk), .Q(n2680) );
  DFFTRX1 clk_r_REG422_S4 ( .D(\accum_hpf[2][4] ), .RN(n4410), .CK(clk), .Q(
        n2894) );
  DFFTRX1 clk_r_REG288_S8 ( .D(\accum_lpf[5][5] ), .RN(n4396), .CK(clk), .Q(
        n2783) );
  DFFTRX1 clk_r_REG374_S9 ( .D(\accum_hpf[7][8] ), .RN(n4402), .CK(clk), .Q(
        n2527) );
  DFFTRX1 clk_r_REG385_S11 ( .D(\accum_hpf[9][7] ), .RN(n4406), .CK(clk), .Q(
        n2723) );
  DFFTRX1 clk_r_REG294_S14 ( .D(\accum_lpf[11][5] ), .RN(n4401), .CK(clk), .Q(
        n2627) );
  DFFTRX1 clk_r_REG445_S15 ( .D(\accum_hpf[13][3] ), .RN(n4410), .CK(clk), .Q(
        n2861) );
  DFFTRX1 clk_r_REG147_S5 ( .D(\accum_hpf[10][12] ), .RN(n4396), .CK(clk), .Q(
        n2774) );
  DFFTRX1 clk_r_REG379_S5 ( .D(\accum_hpf[3][7] ), .RN(n4397), .CK(clk), .Q(
        n2945) );
  DFFTRX1 clk_r_REG423_S5 ( .D(\accum_hpf[3][4] ), .RN(n4397), .CK(clk), .Q(
        n2942) );
  DFFTRX1 clk_r_REG298_S6 ( .D(\accum_lpf[3][4] ), .RN(n4397), .CK(clk), .Q(
        n2910) );
  DFFTRX1 clk_r_REG397_S4 ( .D(\accum_hpf[2][6] ), .RN(n4407), .CK(clk), .Q(
        n2896) );
  DFFTRX1 clk_r_REG273_S5 ( .D(\accum_lpf[2][6] ), .RN(n4398), .CK(clk), .Q(
        n2832) );
  DFFTRX1 clk_r_REG305_S13 ( .D(\accum_lpf[10][4] ), .RN(n4398), .CK(clk), .Q(
        n2798) );
  DFFTRX1 clk_r_REG430_S12 ( .D(\accum_hpf[10][4] ), .RN(n4394), .CK(clk), .Q(
        n2766) );
  DFFTRX1 clk_r_REG280_S12 ( .D(\accum_lpf[9][6] ), .RN(n4400), .CK(clk), .Q(
        n2706) );
  DFFTRX1 clk_r_REG443_S13 ( .D(\accum_hpf[11][3] ), .RN(n4401), .CK(clk), .Q(
        n2641) );
  DFFTRX1 clk_r_REG306_S14 ( .D(\accum_lpf[11][4] ), .RN(n4395), .CK(clk), .Q(
        n2626) );
  DFFTRX1 clk_r_REG285_S5 ( .D(\accum_lpf[2][5] ), .RN(n4398), .CK(clk), .Q(
        n2831) );
  DFFTRX1 clk_r_REG482_S3 ( .D(n2993), .RN(n4413), .CK(clk), .Q(n2992) );
  DFFTRX1 clk_r_REG97_S16 ( .D(\accum_lpf[14][4] ), .RN(n4403), .CK(clk), .Q(
        n2523) );
  DFFTRX1 clk_r_REG275_S7 ( .D(\accum_lpf[4][6] ), .RN(n4397), .CK(clk), .Q(
        n2612) );
  DFFTRX1 clk_r_REG435_S5 ( .D(\accum_hpf[3][3] ), .RN(n4397), .CK(clk), .Q(
        n2941) );
  DFFTRX1 clk_r_REG286_S6 ( .D(\accum_lpf[3][5] ), .RN(n4397), .CK(clk), .Q(
        n2911) );
  DFFTRX1 clk_r_REG409_S4 ( .D(\accum_hpf[2][5] ), .RN(n4410), .CK(clk), .Q(
        n2895) );
  DFFTRX1 clk_r_REG434_S4 ( .D(\accum_hpf[2][3] ), .RN(n4410), .CK(clk), .Q(
        n2893) );
  DFFTRX1 clk_r_REG454_S4 ( .D(\accum_hpf[2][2] ), .RN(n4407), .CK(clk), .Q(
        n2892) );
  DFFTRX1 clk_r_REG411_S6 ( .D(\accum_hpf[4][5] ), .RN(n4409), .CK(clk), .Q(
        n2879) );
  DFFTRX1 clk_r_REG424_S6 ( .D(\accum_hpf[4][4] ), .RN(n4409), .CK(clk), .Q(
        n2878) );
  DFFTRX1 clk_r_REG332_S5 ( .D(\accum_lpf[2][3] ), .RN(n4398), .CK(clk), .Q(
        n2829) );
  DFFTRX1 clk_r_REG372_S7 ( .D(\accum_hpf[5][8] ), .RN(n4408), .CK(clk), .Q(
        n2818) );
  DFFTRX1 clk_r_REG400_S7 ( .D(\accum_hpf[5][6] ), .RN(n4408), .CK(clk), .Q(
        n2816) );
  DFFTRX1 clk_r_REG412_S7 ( .D(\accum_hpf[5][5] ), .RN(n4408), .CK(clk), .Q(
        n2815) );
  DFFTRX1 clk_r_REG293_S13 ( .D(\accum_lpf[10][5] ), .RN(n4398), .CK(clk), .Q(
        n2799) );
  DFFTRX1 clk_r_REG276_S8 ( .D(\accum_lpf[5][6] ), .RN(n4394), .CK(clk), .Q(
        n2784) );
  DFFTRX1 clk_r_REG417_S12 ( .D(\accum_hpf[10][5] ), .RN(n4394), .CK(clk), .Q(
        n2767) );
  DFFTRX1 clk_r_REG350_S8 ( .D(\accum_hpf[6][12] ), .RN(n4394), .CK(clk), .Q(
        n2758) );
  DFFTRX1 clk_r_REG416_S11 ( .D(\accum_hpf[9][5] ), .RN(n4406), .CK(clk), .Q(
        n2721) );
  DFFTRX1 clk_r_REG258_S12 ( .D(\accum_lpf[9][7] ), .RN(n4400), .CK(clk), .Q(
        n2707) );
  DFFTRX1 clk_r_REG292_S12 ( .D(\accum_lpf[9][5] ), .RN(n4400), .CK(clk), .Q(
        n2705) );
  DFFTRX1 clk_r_REG304_S12 ( .D(\accum_lpf[9][4] ), .RN(n4400), .CK(clk), .Q(
        n2704) );
  DFFTRX1 clk_r_REG186_S9 ( .D(\accum_lpf[6][12] ), .RN(n4399), .CK(clk), .Q(
        n2696) );
  DFFTRX1 clk_r_REG464_S14 ( .D(\accum_hpf[12][2] ), .RN(n4404), .CK(clk), .Q(
        n2656) );
  DFFTRX1 clk_r_REG431_S13 ( .D(\accum_hpf[11][4] ), .RN(n4401), .CK(clk), .Q(
        n2642) );
  DFFTRX1 clk_r_REG331_S14 ( .D(\accum_lpf[11][3] ), .RN(n4395), .CK(clk), .Q(
        n2625) );
  DFFTRX1 clk_r_REG253_S7 ( .D(\accum_lpf[4][7] ), .RN(n4397), .CK(clk), .Q(
        n2613) );
  DFFTRX1 clk_r_REG287_S7 ( .D(\accum_lpf[4][5] ), .RN(n4397), .CK(clk), .Q(
        n2611) );
  DFFTRX1 clk_r_REG299_S7 ( .D(\accum_lpf[4][4] ), .RN(n4411), .CK(clk), .Q(
        n2610) );
  DFFTRX1 clk_r_REG118_S16 ( .D(\accum_hpf[14][6] ), .RN(n4401), .CK(clk), .Q(
        n2581) );
  DFFTRX1 clk_r_REG187_S10 ( .D(\accum_lpf[7][12] ), .RN(n4395), .CK(clk), .Q(
        n2554) );
  DFFTRX1 clk_r_REG448_S3 ( .D(\accum_hpf[1][6] ), .RN(n4403), .CK(clk), .Q(
        n2543) );
  DFFTRX1 clk_r_REG90_S16 ( .D(\accum_lpf[14][6] ), .RN(n4402), .CK(clk), .Q(
        n2542) );
  DFFTRX1 clk_r_REG91_S16 ( .D(\accum_lpf[14][5] ), .RN(n4414), .CK(clk), .Q(
        n2518) );
  DFFTRX1 clk_r_REG441_S11 ( .D(\accum_hpf[9][3] ), .RN(n4413), .CK(clk), .Q(
        n2719) );
  DFFTRX1 clk_r_REG428_S10 ( .D(n2743), .RN(n4407), .CK(clk), .Q(n2742) );
  DFFTRX1 clk_r_REG403_S10 ( .D(n2749), .RN(n4410), .CK(clk), .Q(n2748) );
  DFFTRX1 clk_r_REG279_S11 ( .D(n2687), .RN(n4393), .CK(clk), .Q(n2686) );
  DFFTRX1 clk_r_REG323_S6 ( .D(\accum_lpf[3][3] ), .RN(n4397), .CK(clk), .Q(
        n2909) );
  DFFTRX1 clk_r_REG436_S6 ( .D(\accum_hpf[4][3] ), .RN(n4409), .CK(clk), .Q(
        n2877) );
  DFFTRX1 clk_r_REG425_S7 ( .D(\accum_hpf[5][4] ), .RN(n4398), .CK(clk), .Q(
        n2814) );
  DFFTRX1 clk_r_REG330_S13 ( .D(\accum_lpf[10][3] ), .RN(n4394), .CK(clk), .Q(
        n2797) );
  DFFTRX1 clk_r_REG442_S12 ( .D(\accum_hpf[10][3] ), .RN(n4394), .CK(clk), .Q(
        n2765) );
  DFFTRX1 clk_r_REG324_S7 ( .D(\accum_lpf[4][3] ), .RN(n4411), .CK(clk), .Q(
        n2609) );
  DFFTRX1 clk_r_REG463_S13 ( .D(\accum_hpf[11][2] ), .RN(n4413), .CK(clk), .Q(
        n2640) );
  DFFTRX1 clk_r_REG329_S12 ( .D(\accum_lpf[9][3] ), .RN(n4400), .CK(clk), .Q(
        n2703) );
  DFFTRX1 clk_r_REG98_S16 ( .D(\accum_lpf[14][3] ), .RN(n4403), .CK(clk), .Q(
        n2521) );
  DFFTRX1 clk_r_REG113_S15 ( .D(\accum_hpf[13][1] ), .RN(n4393), .CK(clk), 
        .QN(n3029) );
  DFFTRX1 clk_r_REG96_S16 ( .D(\accum_lpf[14][10] ), .RN(n4402), .CK(clk), .Q(
        n2540) );
  DFFTRX1 clk_r_REG35_S3 ( .D(\accum_hpf[14][10] ), .RN(n4403), .CK(clk), .Q(
        n2504) );
  DFFTRX1 clk_r_REG408_S15 ( .D(\accum_hpf[13][6] ), .RN(n4410), .CK(clk), .Q(
        n2864) );
  DFFTRX1 clk_r_REG420_S15 ( .D(\accum_hpf[13][5] ), .RN(n4410), .CK(clk), .Q(
        n2863) );
  DFFTRX1 clk_r_REG117_S16 ( .D(\accum_hpf[14][11] ), .RN(n4397), .CK(clk), 
        .Q(n2605) );
  DFFTRX1 clk_r_REG121_S16 ( .D(\accum_hpf[14][8] ), .RN(n4401), .CK(clk), .Q(
        n2601) );
  DFFTRX1 clk_r_REG123_S16 ( .D(\accum_hpf[14][7] ), .RN(n4396), .CK(clk), .Q(
        n2565) );
  DFFTRX1 clk_r_REG80_S16 ( .D(\accum_lpf[14][9] ), .RN(n4403), .CK(clk), .Q(
        n2546) );
  DFFTRX1 clk_r_REG89_S16 ( .D(\accum_lpf[14][7] ), .RN(n4402), .CK(clk), .Q(
        n2533) );
  DFFTRX1 clk_r_REG87_S16 ( .D(\accum_lpf[14][8] ), .RN(n4414), .CK(clk), .Q(
        n2529) );
  DFFTRX1 clk_r_REG122_S16 ( .D(\accum_hpf[14][9] ), .RN(n4414), .CK(clk), .Q(
        n2511) );
  DFFTRX1 clk_r_REG433_S15 ( .D(\accum_hpf[13][4] ), .RN(n4410), .CK(clk), .Q(
        n2862) );
  DFFTRX1 clk_r_REG193_S16 ( .D(\accum_lpf[13][12] ), .RN(n4408), .CK(clk), 
        .Q(n2854) );
  DFFTRX1 clk_r_REG250_S16 ( .D(\accum_lpf[13][8] ), .RN(n4408), .CK(clk), .Q(
        n2850) );
  DFFTRX1 clk_r_REG447_S3 ( .D(\accum_hpf[1][15] ), .RN(n4402), .CK(clk), .Q(
        n2541) );
  DFFTRX1 clk_r_REG404_S11 ( .D(\accum_hpf[9][6] ), .RN(n4406), .CK(clk), .Q(
        n2722) );
  DFFTRX1 clk_r_REG507_S3 ( .D(addr[2]), .RN(n4734), .CK(clk), .Q(n2975) );
  DFFTRX1 clk_r_REG508_S3 ( .D(addr[1]), .RN(n4734), .CK(clk), .Q(n2974) );
  DFFTRX1 clk_r_REG389_S15 ( .D(\accum_hpf[13][7] ), .RN(n4407), .CK(clk), .Q(
        n2865), .QN(n4330) );
  DFFTRX1 clk_r_REG18_S17 ( .D(N805), .RN(n4412), .CK(clk), .Q(n2972) );
  DFFTRX1 clk_r_REG2_S4 ( .D(N294), .RN(n4412), .CK(clk), .Q(n2963) );
  DFFTRX1 clk_r_REG79_S15 ( .D(\accum_lpf[13][1] ), .RN(n4408), .CK(clk), .Q(
        n2843) );
  DFFTRX1 clk_r_REG465_S15 ( .D(\accum_hpf[13][2] ), .RN(n4409), .CK(clk), .Q(
        n2860) );
  DFFTRX1 clk_r_REG38_S4 ( .D(\accum_hpf[15][14] ), .RN(n4412), .CK(clk), .Q(
        n2970) );
  DFFTRX1 clk_r_REG83_S17 ( .D(\accum_lpf[15][14] ), .RN(n4412), .CK(clk), .Q(
        n2961) );
  DFFQX1 reset_1_reg ( .D(reset), .CK(n1986), .Q(N8) );
  DFFTRX1 clk_r_REG37_S4 ( .D(\accum_hpf[15][13] ), .RN(n4412), .CK(clk), .Q(
        n2969), .QN(n3734) );
  DFFTRX1 clk_r_REG82_S17 ( .D(\accum_lpf[15][13] ), .RN(n4412), .CK(clk), .Q(
        n2960), .QN(n3735) );
  DFFTRX1 clk_r_REG39_S4 ( .D(\accum_hpf[15][12] ), .RN(n4412), .CK(clk), .Q(
        n2968) );
  DFFTRX1 clk_r_REG84_S17 ( .D(\accum_lpf[15][12] ), .RN(n4393), .CK(clk), .Q(
        n2959) );
  AO21X1 U349 ( .A0(n3527), .A1(n4385), .B0(n3680), .Y(\accum_lpf[0][7] ) );
  NOR2X1 U350 ( .A(n4386), .B(n3527), .Y(n3680) );
  NAND2X1 U269 ( .A(n2513), .B(n4732), .Y(n3456) );
  AND2X2 U137 ( .A(n2955), .B(n2956), .Y(n3378) );
  AND2X2 U122 ( .A(n2964), .B(n2965), .Y(n3371) );
  XNOR2X1 U425 ( .A(n3578), .B(n3579), .Y(\accum_hpf[1][8] ) );
  OAI21X1 U247 ( .A0(n3454), .A1(n3455), .B0(n3456), .Y(n3453) );
  AOI2BB2X1 U246 ( .B0(n3451), .B1(n3453), .A0N(n3453), .A1N(n3451), .Y(
        \accum_lpf[1][8] ) );
  AOI2BB2X1 U251 ( .B0(n3458), .B1(n3459), .A0N(n3458), .A1N(n3459), .Y(
        \accum_lpf[1][6] ) );
  AOI2BB2X1 U427 ( .B0(n3581), .B1(n3582), .A0N(n3581), .A1N(n3582), .Y(
        \accum_hpf[1][7] ) );
  OAI21X4 U270 ( .A0(n2593), .A1(n4382), .B0(n3472), .Y(n3455) );
  OAI22XL U252 ( .A0(n4380), .A1(n2593), .B0(n4382), .B1(n4302), .Y(n3459) );
  OAI21X4 U451 ( .A0(n2585), .A1(n4382), .B0(n3597), .Y(n3581) );
  OAI21X4 U450 ( .A0(n4730), .A1(n4326), .B0(n3581), .Y(n3580) );
  NAND2BX1 U142 ( .AN(y_valid), .B(n3013), .Y(n2499) );
  OAI22XL U428 ( .A0(n4730), .A1(n4326), .B0(n4375), .B1(n2984), .Y(n3582) );
  OAI2BB2X1 U280 ( .B0(n4389), .B1(n3012), .A0N(n4389), .A1N(n3012), .Y(n3451)
         );
  NOR2XL U248 ( .A(n4375), .B(n2513), .Y(n3454) );
  OAI22XL U223 ( .A0(n4730), .A1(n2698), .B0(n4375), .B1(n4331), .Y(n3435) );
  OAI22XL U401 ( .A0(n4730), .A1(n2760), .B0(n4375), .B1(n3794), .Y(n3559) );
  OAI22XL U191 ( .A0(n4730), .A1(n2534), .B0(n4375), .B1(n4334), .Y(n3412) );
  OAI21X4 U447 ( .A0(n3595), .A1(n3577), .B0(n3596), .Y(n3594) );
  NOR2XL U460 ( .A(n2984), .B(n4388), .Y(n3595) );
  DFFQX1 clk_r_REG0_S2 ( .D(N8), .CK(clk), .Q(n3819) );
  DFFTRX2 clk_r_REG474_S3 ( .D(n4385), .RN(n4412), .CK(clk), .Q(n2984), .QN(
        n4326) );
  DFFTRX2 clk_r_REG264_S4 ( .D(\accum_lpf[1][15] ), .RN(n4401), .CK(clk), .Q(
        n2597) );
  DFFTRX1 clk_r_REG509_S3 ( .D(n2496), .RN(n4734), .CK(clk), .Q(n3008), .QN(
        n3816) );
  DFFTRX2 clk_r_REG470_S4 ( .D(\accum_hpf[1][14] ), .RN(n4401), .CK(clk), .Q(
        n2590) );
  DFFTRX2 clk_r_REG136_S8 ( .D(\accum_hpf[13][13] ), .RN(n4409), .CK(clk), .Q(
        n2871) );
  DFFTRX2 clk_r_REG497_S3 ( .D(n3680), .RN(n4400), .CK(clk), .QN(n3012) );
  DFFTRX1 clk_r_REG510_S3 ( .D(n2499), .RN(n4734), .CK(clk), .QN(n3793) );
  DFFTRX2 clk_r_REG498_S2 ( .D(N9), .RN(n4734), .CK(clk), .Q(n2973), .QN(n3013) );
  DFFTRX1 clk_r_REG342_S8 ( .D(\accum_hpf[6][14] ), .RN(n4394), .CK(clk), .Q(
        n2760), .QN(n3794) );
  DFFQX2 clk_r_REG500_S4 ( .D(n2983), .CK(clk), .Q(n2982) );
  DFFTRX1 clk_r_REG150_S5 ( .D(\accum_hpf[10][13] ), .RN(n4397), .CK(clk), .Q(
        n2775) );
  DFFTRX1 clk_r_REG194_S9 ( .D(\accum_lpf[6][14] ), .RN(n4399), .CK(clk), .Q(
        n2698), .QN(n4331) );
  DFFTRX1 clk_r_REG47_S9 ( .D(\accum_lpf[7][16] ), .RN(n4401), .CK(clk), .Q(
        n2588) );
  DFFTRX1 clk_r_REG339_S5 ( .D(\accum_hpf[3][10] ), .RN(n4397), .CK(clk), .Q(
        n2948) );
  DFFTRX1 clk_r_REG171_S9 ( .D(\accum_lpf[6][13] ), .RN(n4399), .CK(clk), .Q(
        n2697), .QN(n4303) );
  DFFTRX1 clk_r_REG13_S12 ( .D(\accum_hpf[10][16] ), .RN(n4394), .CK(clk), .Q(
        n2778) );
  DFFTRX1 clk_r_REG152_S4 ( .D(\accum_hpf[9][14] ), .RN(n4399), .CK(clk), .Q(
        n2730) );
  DFFTRX1 clk_r_REG341_S7 ( .D(\accum_hpf[5][13] ), .RN(n4407), .CK(clk), .Q(
        n2823) );
  DFFTRX1 clk_r_REG199_S13 ( .D(\accum_lpf[10][11] ), .RN(n4396), .CK(clk), 
        .Q(n2805) );
  DFFTRX1 clk_r_REG200_S14 ( .D(\accum_lpf[11][11] ), .RN(n4401), .CK(clk), 
        .Q(n2633) );
  DFFTRX1 clk_r_REG132_S6 ( .D(\accum_hpf[11][13] ), .RN(n4404), .CK(clk), .Q(
        n2651) );
  DFFTRX1 clk_r_REG340_S6 ( .D(\accum_hpf[4][11] ), .RN(n4393), .CK(clk), .Q(
        n2885) );
  DFFTRX1 clk_r_REG95_S16 ( .D(n4726), .RN(n4401), .CK(clk), .Q(n2598) );
  DFFTRX1 clk_r_REG92_S16 ( .D(\accum_lpf[14][11] ), .RN(n4401), .CK(clk), .Q(
        n2599) );
  DFFTRX1 clk_r_REG40_S4 ( .D(\accum_hpf[15][11] ), .RN(n4412), .CK(clk), .Q(
        n2967) );
  DFFTRX1 clk_r_REG85_S17 ( .D(\accum_lpf[15][11] ), .RN(n4410), .CK(clk), .Q(
        n2958) );
  DFFTRX1 clk_r_REG36_S4 ( .D(\accum_hpf[15][10] ), .RN(n4412), .CK(clk), .Q(
        n2966) );
  DFFTRX1 clk_r_REG81_S17 ( .D(\accum_lpf[15][10] ), .RN(n1983), .CK(clk), .Q(
        n2957) );
  DFFTRX4 clk_r_REG10_S9 ( .D(\accum_hpf[7][16] ), .RN(n4401), .CK(clk), .Q(
        n2587) );
  DFFTRX4 clk_r_REG357_S6 ( .D(\accum_hpf[4][13] ), .RN(n4393), .CK(clk), .Q(
        n2887) );
  DFFTRX1 clk_r_REG201_S15 ( .D(\accum_lpf[12][11] ), .RN(n1983), .CK(clk), 
        .Q(n2933) );
  DFFTRX4 clk_r_REG23_S8 ( .D(\accum_hpf[6][15] ), .RN(n4394), .CK(clk), .Q(
        n2761), .QN(n3764) );
  DFFTRX1 clk_r_REG33_S3 ( .D(\accum_lpf[14][16] ), .RN(n4403), .CK(clk), .Q(
        n2502) );
  DFFTRX1 clk_r_REG182_S13 ( .D(\accum_lpf[10][13] ), .RN(n4393), .CK(clk), 
        .Q(n2807) );
  DFFTRX1 clk_r_REG141_S6 ( .D(\accum_hpf[11][11] ), .RN(n4404), .CK(clk), .Q(
        n2649) );
  DFFTRX1 clk_r_REG378_S5 ( .D(\accum_hpf[3][14] ), .RN(n4397), .CK(clk), .Q(
        n2952) );
  DFFTRX1 clk_r_REG51_S13 ( .D(\accum_lpf[11][16] ), .RN(n4401), .CK(clk), .Q(
        n2638) );
  DFFTRX1 clk_r_REG48_S10 ( .D(\accum_lpf[8][16] ), .RN(n4401), .CK(clk), .Q(
        n2589) );
  DFFTRX1 clk_r_REG64_S14 ( .D(\accum_lpf[12][15] ), .RN(n4397), .CK(clk), .Q(
        n2937) );
  DFFTRX1 clk_r_REG177_S15 ( .D(\accum_lpf[12][14] ), .RN(n4411), .CK(clk), 
        .Q(n2936) );
  DFFTRX1 clk_r_REG137_S6 ( .D(\accum_hpf[11][14] ), .RN(n4404), .CK(clk), .Q(
        n2652) );
  DFFTRX1 clk_r_REG31_S16 ( .D(\accum_hpf[14][15] ), .RN(n4414), .CK(clk), .Q(
        n2514) );
  DFFTRX1 clk_r_REG119_S17 ( .D(n952), .RN(n4412), .CK(clk), .Q(n2964) );
  DFFTRX1 clk_r_REG88_S17 ( .D(n953), .RN(n4397), .CK(clk), .Q(n2955) );
  DFFTRX1 clk_r_REG120_S17 ( .D(\accum_hpf[15][9] ), .RN(n4412), .CK(clk), .Q(
        n2965) );
  DFFTRX1 clk_r_REG86_S17 ( .D(\accum_lpf[15][9] ), .RN(n4407), .CK(clk), .Q(
        n2956) );
  DFFTRX2 clk_r_REG175_S13 ( .D(\accum_lpf[10][14] ), .RN(n4394), .CK(clk), 
        .Q(n2808) );
  DFFTRX2 clk_r_REG15_S14 ( .D(\accum_hpf[12][16] ), .RN(n4405), .CK(clk), .Q(
        n2670) );
  DFFTRX2 clk_r_REG375_S5 ( .D(\accum_hpf[3][13] ), .RN(n4397), .CK(clk), .Q(
        n2951) );
  DFFTRX1 clk_r_REG210_S16 ( .D(\accum_lpf[13][10] ), .RN(n4408), .CK(clk), 
        .Q(n2852), .QN(n4332) );
  DFFTRX2 clk_r_REG28_S13 ( .D(\accum_hpf[11][15] ), .RN(n4404), .CK(clk), .Q(
        n2653) );
  DFFTRX2 clk_r_REG176_S14 ( .D(\accum_lpf[11][14] ), .RN(n4401), .CK(clk), 
        .Q(n2636) );
  DFFTRX1 clk_r_REG208_S14 ( .D(\accum_lpf[11][10] ), .RN(n4395), .CK(clk), 
        .Q(n2632) );
  DFFTRX2 clk_r_REG46_S8 ( .D(\accum_lpf[6][16] ), .RN(n4399), .CK(clk), .Q(
        n2700), .QN(n3795) );
  DFFTRX2 clk_r_REG94_S16 ( .D(\accum_lpf[14][12] ), .RN(n4396), .CK(clk), .Q(
        n2562) );
  DFFTRX2 clk_r_REG174_S12 ( .D(\accum_lpf[9][14] ), .RN(n4400), .CK(clk), .Q(
        n2714) );
  DFFTRX2 clk_r_REG223_S8 ( .D(\accum_lpf[5][12] ), .RN(n4398), .CK(clk), .Q(
        n2790) );
  DFFTRX2 clk_r_REG449_S3 ( .D(\accum_hpf[1][9] ), .RN(n4403), .CK(clk), .Q(
        n2547) );
  DFFTRX1 clk_r_REG377_S5 ( .D(\accum_hpf[3][11] ), .RN(n4397), .CK(clk), .Q(
        n2949) );
  DFFTRX1 clk_r_REG184_S15 ( .D(\accum_lpf[12][13] ), .RN(n1983), .CK(clk), 
        .Q(n2935) );
  DFFTRX1 clk_r_REG220_S8 ( .D(\accum_lpf[5][14] ), .RN(n4398), .CK(clk), .Q(
        n2792) );
  DFFTRX1 clk_r_REG222_S8 ( .D(\accum_lpf[5][11] ), .RN(n4398), .CK(clk), .Q(
        n2789) );
  DFFTRX1 clk_r_REG1_S3 ( .D(\accum_lpf[14][15] ), .RN(n4403), .CK(clk), .Q(
        n2500) );
  DFFTRX2 clk_r_REG45_S7 ( .D(\accum_lpf[5][16] ), .RN(n4398), .CK(clk), .Q(
        n2794) );
  DFFTRX1 clk_r_REG34_S3 ( .D(\accum_hpf[1][16] ), .RN(n4403), .CK(clk), .Q(
        n2503) );
  DFFTRX1 clk_r_REG226_S7 ( .D(\accum_lpf[4][14] ), .RN(n4406), .CK(clk), .Q(
        n2620) );
  DFFTRX2 clk_r_REG59_S9 ( .D(\accum_lpf[7][15] ), .RN(n4403), .CK(clk), .Q(
        n2531) );
  DFFTRX2 clk_r_REG149_S5 ( .D(\accum_hpf[10][14] ), .RN(n4394), .CK(clk), .Q(
        n2776) );
  DFFTRX2 clk_r_REG61_S11 ( .D(\accum_lpf[9][15] ), .RN(n4400), .CK(clk), .Q(
        n2715) );
  DFFTRX2 clk_r_REG49_S11 ( .D(\accum_lpf[9][16] ), .RN(n4406), .CK(clk), .Q(
        n2716) );
  NOR2X2 U620 ( .A(n4519), .B(n4527), .Y(n4524) );
  OR2X1 U621 ( .A(n4372), .B(n4312), .Y(n4428) );
  CLKBUFX3 U622 ( .A(n4741), .Y(n4353) );
  CLKBUFX3 U623 ( .A(n4736), .Y(n4354) );
  AO21X2 U624 ( .A0(n4636), .A1(n4641), .B0(n4437), .Y(n4436) );
  NAND2X1 U625 ( .A(n4371), .B(n4295), .Y(n4431) );
  BUFX12 U626 ( .A(n4353), .Y(z[6]) );
  BUFX12 U627 ( .A(n4354), .Y(y[6]) );
  NAND2BX2 U628 ( .AN(n4730), .B(n4391), .Y(n4454) );
  NOR3X1 U629 ( .A(n4511), .B(n4523), .C(n4503), .Y(n4504) );
  AND2X2 U630 ( .A(n4459), .B(n3888), .Y(n3886) );
  NAND2X2 U631 ( .A(n3773), .B(n3820), .Y(n3830) );
  CLKINVX1 U632 ( .A(n4456), .Y(n3887) );
  NOR2X1 U633 ( .A(n4380), .B(n4304), .Y(n4416) );
  OAI21XL U634 ( .A0(n3365), .A1(n4292), .B0(n2972), .Y(n3366) );
  OAI21XL U635 ( .A0(n3372), .A1(n4293), .B0(n2963), .Y(n3373) );
  NOR3BX1 U636 ( .AN(n4554), .B(n4589), .C(n4416), .Y(n4417) );
  AOI21X1 U637 ( .A0(n4392), .A1(n4333), .B0(n3713), .Y(n3841) );
  CLKINVX1 U638 ( .A(n4542), .Y(n3713) );
  OR3X4 U639 ( .A(n4468), .B(n4469), .C(n4471), .Y(n3850) );
  OAI2BB1X1 U640 ( .A0N(n2870), .A1N(n2869), .B0(n4391), .Y(n4701) );
  AO22X4 U641 ( .A0(n4371), .A1(n3820), .B0(n3853), .B1(n4442), .Y(n3862) );
  NOR2BX1 U642 ( .AN(n4484), .B(n2855), .Y(n4691) );
  AOI2BB2X1 U643 ( .B0(n4392), .B1(n2869), .A0N(n4392), .A1N(n2869), .Y(n3714)
         );
  XNOR2X1 U644 ( .A(n4721), .B(n3714), .Y(\accum_hpf[14][11] ) );
  AOI2BB2X1 U645 ( .B0(n4372), .B1(n4307), .A0N(n4372), .A1N(n4307), .Y(n3715)
         );
  AOI2BB2X1 U646 ( .B0(n4564), .B1(n3715), .A0N(n4564), .A1N(n3715), .Y(
        \accum_lpf[14][4] ) );
  AOI2BB1X1 U647 ( .A0N(n2869), .A1N(n2870), .B0(n4389), .Y(n4702) );
  AOI2BB2X1 U648 ( .B0(n4381), .B1(n2864), .A0N(n4381), .A1N(n2864), .Y(n3716)
         );
  AOI2BB2X1 U649 ( .B0(n4677), .B1(n3716), .A0N(n4677), .A1N(n3716), .Y(
        \accum_hpf[14][6] ) );
  OAI211X1 U650 ( .A0(n4386), .A1(n4289), .B0(n4491), .C0(n4487), .Y(n3717) );
  OAI31X1 U651 ( .A0(n4488), .A1(n4339), .A2(n4487), .B0(n3717), .Y(
        \accum_lpf[14][15] ) );
  AOI2BB2X1 U652 ( .B0(n4371), .B1(n2550), .A0N(n4371), .A1N(n2550), .Y(n3718)
         );
  OAI21XL U653 ( .A0(n4661), .A1(n4662), .B0(n4660), .Y(n3719) );
  AOI2BB2X1 U654 ( .B0(n3718), .B1(n3719), .A0N(n3718), .A1N(n3719), .Y(
        \accum_hpf[8][12] ) );
  NAND2BX1 U655 ( .AN(n4527), .B(n4528), .Y(n4530) );
  NAND2BX1 U656 ( .AN(n4522), .B(n4516), .Y(n4502) );
  NAND2X1 U657 ( .A(n4710), .B(n4711), .Y(n3720) );
  AOI2BB2X1 U658 ( .B0(n4712), .B1(n3720), .A0N(n4712), .A1N(n3720), .Y(
        \accum_hpf[14][8] ) );
  NAND2BX1 U659 ( .AN(n4618), .B(n4617), .Y(n3721) );
  AOI2BB2X1 U660 ( .B0(n4619), .B1(n3721), .A0N(n4619), .A1N(n3721), .Y(
        \accum_lpf[7][12] ) );
  OAI22XL U661 ( .A0(n2854), .A1(n4718), .B0(n4390), .B1(n4717), .Y(n3722) );
  OAI21XL U662 ( .A0(n4390), .A1(n4718), .B0(n3722), .Y(n3723) );
  AOI211X1 U663 ( .A0(n4386), .A1(n4720), .B0(n4719), .C0(n3723), .Y(n3724) );
  AOI2BB2X1 U664 ( .B0(n3724), .B1(n2855), .A0N(n3724), .A1N(n2855), .Y(
        \accum_lpf[14][13] ) );
  AOI2BB2X1 U665 ( .B0(n4392), .B1(n2870), .A0N(n4392), .A1N(n2870), .Y(n3725)
         );
  XNOR2X1 U666 ( .A(n4713), .B(n3725), .Y(\accum_hpf[14][12] ) );
  AOI2BB2X1 U667 ( .B0(n4371), .B1(n4295), .A0N(n4371), .A1N(n4295), .Y(n3726)
         );
  AOI2BB2X1 U668 ( .B0(n4547), .B1(n3726), .A0N(n4547), .A1N(n3726), .Y(
        \accum_lpf[1][5] ) );
  AOI2BB2X1 U669 ( .B0(n4371), .B1(n4301), .A0N(n4371), .A1N(n4301), .Y(n3727)
         );
  AOI2BB2X1 U670 ( .B0(n4590), .B1(n3727), .A0N(n4590), .A1N(n3727), .Y(
        \accum_hpf[1][5] ) );
  AOI2BB2X1 U671 ( .B0(n3455), .B1(n4375), .A0N(n3455), .A1N(n4375), .Y(n3728)
         );
  XNOR2X1 U672 ( .A(n3728), .B(n2513), .Y(\accum_lpf[1][7] ) );
  AOI2BB2X1 U673 ( .B0(n4372), .B1(n2862), .A0N(n4372), .A1N(n2862), .Y(n3729)
         );
  AOI21X1 U674 ( .A0(n4681), .A1(n4683), .B0(n4680), .Y(n3730) );
  AOI2BB2X1 U675 ( .B0(n3729), .B1(n3730), .A0N(n3729), .A1N(n3730), .Y(
        \accum_hpf[14][4] ) );
  INVXL U676 ( .A(n4642), .Y(n3731) );
  OAI222XL U677 ( .A0(n4640), .A1(n4641), .B0(n4640), .B1(n4642), .C0(n4643), 
        .C1(n3731), .Y(\accum_lpf[8][10] ) );
  INVXL U678 ( .A(n3768), .Y(n3732) );
  OAI222XL U679 ( .A0(n4611), .A1(n4612), .B0(n4611), .B1(n3768), .C0(n4614), 
        .C1(n3732), .Y(\accum_hpf[7][10] ) );
  NAND2XL U680 ( .A(n4568), .B(n4567), .Y(n4570) );
  NAND2X2 U681 ( .A(n3907), .B(n3792), .Y(n4415) );
  BUFX12 U682 ( .A(n3594), .Y(n4341) );
  OA21X2 U683 ( .A0(n3852), .A1(n3791), .B0(n3831), .Y(n3889) );
  XOR2XL U684 ( .A(n4666), .B(n4665), .Y(\accum_lpf[8][9] ) );
  NOR2X2 U685 ( .A(n4368), .B(n2757), .Y(n4420) );
  BUFX16 U686 ( .A(n4733), .Y(n4383) );
  NAND2BX1 U687 ( .AN(n3852), .B(n2756), .Y(n4612) );
  CLKINVX20 U688 ( .A(n3900), .Y(n3852) );
  XNOR2X4 U689 ( .A(n4582), .B(n4391), .Y(\accum_lpf[14][10] ) );
  BUFX8 U690 ( .A(n4384), .Y(n4391) );
  CLKINVX1 U691 ( .A(n4459), .Y(n3897) );
  NOR2X2 U692 ( .A(n3734), .B(n3368), .Y(n3367) );
  NOR2X2 U693 ( .A(n3735), .B(n3375), .Y(n3374) );
  NOR2X2 U694 ( .A(n4684), .B(n4372), .Y(n4651) );
  CLKBUFX3 U695 ( .A(n3822), .Y(n3736) );
  NAND2X6 U696 ( .A(n4376), .B(n3821), .Y(n4443) );
  NAND2X2 U697 ( .A(n4378), .B(n2556), .Y(n4641) );
  INVX16 U698 ( .A(n3738), .Y(n3673) );
  NAND2X2 U699 ( .A(n3907), .B(n2860), .Y(n4679) );
  XOR2X2 U700 ( .A(n4341), .B(n3579), .Y(\accum_hpf[1][15] ) );
  BUFX12 U701 ( .A(n4387), .Y(n4390) );
  INVX1 U702 ( .A(n3845), .Y(n3737) );
  BUFX20 U703 ( .A(n3844), .Y(n3845) );
  OAI21X4 U704 ( .A0(n2850), .A1(n4390), .B0(n4567), .Y(n4482) );
  NAND2X6 U705 ( .A(n4465), .B(n4470), .Y(n4462) );
  AND3X6 U706 ( .A(n3894), .B(n3893), .C(n3895), .Y(n3738) );
  NAND3X8 U707 ( .A(n4441), .B(n4440), .C(n4291), .Y(n3829) );
  NAND2X6 U708 ( .A(n4473), .B(n3831), .Y(n4474) );
  NAND2X6 U709 ( .A(n4291), .B(n3861), .Y(n3860) );
  AOI2BB2X2 U710 ( .B0(n4673), .B1(n4423), .A0N(n3907), .A1N(n4300), .Y(n4557)
         );
  NAND2BXL U711 ( .AN(n3907), .B(n4448), .Y(n4684) );
  INVX12 U712 ( .A(n4724), .Y(n4351) );
  NAND2X4 U713 ( .A(n4730), .B(n4371), .Y(n4459) );
  AND2X8 U714 ( .A(_data[6]), .B(n4418), .Y(n4730) );
  INVX12 U715 ( .A(n4730), .Y(n4375) );
  OR2X4 U716 ( .A(n4731), .B(n4730), .Y(n4291) );
  BUFX4 U717 ( .A(n3431), .Y(n4343) );
  NAND2X1 U718 ( .A(n4376), .B(n2755), .Y(n4607) );
  AOI21X2 U719 ( .A0(n3870), .A1(n3871), .B0(n3872), .Y(\accum_lpf[14][16] )
         );
  INVX1 U720 ( .A(n4366), .Y(n4488) );
  OAI211X4 U721 ( .A0(n4385), .A1(n4367), .B0(n4342), .C0(n4485), .Y(n4366) );
  NOR2X2 U722 ( .A(n4686), .B(n4291), .Y(n3527) );
  XOR2XL U723 ( .A(n4686), .B(n4380), .Y(\accum_lpf[0][5] ) );
  XOR2X2 U724 ( .A(n4700), .B(n4288), .Y(\accum_lpf[14][11] ) );
  OAI21X2 U725 ( .A0(n4385), .A1(n4699), .B0(n4698), .Y(n4700) );
  NAND2X2 U726 ( .A(n4646), .B(n4385), .Y(n4698) );
  OR3X4 U727 ( .A(n3853), .B(n4371), .C(n4730), .Y(n3773) );
  NAND3X2 U728 ( .A(n3853), .B(n4730), .C(n4442), .Y(n3828) );
  NAND2X2 U729 ( .A(n4543), .B(n4669), .Y(n4544) );
  OAI2BB1X2 U730 ( .A0N(n2549), .A1N(n4722), .B0(n4386), .Y(n3825) );
  OAI21X1 U731 ( .A0(n4722), .A1(n2549), .B0(n4389), .Y(n3826) );
  OAI2BB1X4 U732 ( .A0N(n3841), .A1N(n4541), .B0(n3842), .Y(n3837) );
  NAND2X2 U733 ( .A(n4378), .B(n2861), .Y(n4681) );
  NAND2BX2 U734 ( .AN(n4471), .B(n3848), .Y(n3847) );
  AND2X4 U735 ( .A(n4471), .B(n4470), .Y(n3849) );
  NAND2X1 U736 ( .A(n4698), .B(n3866), .Y(n3867) );
  NAND2XL U737 ( .A(n4376), .B(n4300), .Y(n4423) );
  NOR2X8 U738 ( .A(n4464), .B(n4452), .Y(n4461) );
  NOR2X8 U739 ( .A(n3846), .B(n4377), .Y(n4447) );
  MXI2X4 U740 ( .A(n4378), .B(n4451), .S0(n4376), .Y(n3901) );
  NOR2X2 U741 ( .A(n4491), .B(n4328), .Y(n3874) );
  BUFX20 U742 ( .A(n4740), .Y(z[7]) );
  BUFX20 U743 ( .A(n4735), .Y(y[7]) );
  NAND2X6 U744 ( .A(n3900), .B(n3821), .Y(n4475) );
  BUFX16 U745 ( .A(_data[0]), .Y(n3821) );
  OAI21X2 U746 ( .A0(n4730), .A1(n4336), .B0(n4689), .Y(n4722) );
  AOI2BB2X4 U747 ( .B0(n4380), .B1(n4327), .A0N(n4594), .A1N(n4579), .Y(n4688)
         );
  NAND2X2 U748 ( .A(n4372), .B(n4309), .Y(n4660) );
  NAND3X4 U749 ( .A(n4679), .B(n4681), .C(n4678), .Y(n4494) );
  NOR2X2 U750 ( .A(n4377), .B(n2861), .Y(n4680) );
  CLKINVX20 U751 ( .A(n3852), .Y(n4377) );
  INVX16 U752 ( .A(_data[3]), .Y(n3822) );
  XOR2X4 U753 ( .A(n3433), .B(n2699), .Y(\accum_lpf[7][15] ) );
  NOR2X4 U754 ( .A(n4380), .B(n2864), .Y(n4519) );
  NOR2X2 U755 ( .A(n4491), .B(n4385), .Y(n3873) );
  NAND3X8 U756 ( .A(n4568), .B(n4483), .C(n2851), .Y(n4720) );
  NOR2X2 U757 ( .A(n4371), .B(n2863), .Y(n4520) );
  AOI2BB2XL U758 ( .B0(n3434), .B1(n3435), .A0N(n3434), .A1N(n3435), .Y(
        \accum_lpf[7][14] ) );
  AO21XL U759 ( .A0(n4626), .A1(n4625), .B0(n4624), .Y(n4627) );
  NAND2XL U760 ( .A(n4624), .B(n4625), .Y(n4629) );
  NOR2X2 U761 ( .A(n3772), .B(_data[6]), .Y(n4452) );
  OAI21X2 U762 ( .A0(n4599), .A1(n4577), .B0(n4576), .Y(n4578) );
  NAND3X8 U763 ( .A(n4549), .B(n4477), .C(n4558), .Y(n4480) );
  INVX8 U764 ( .A(n4694), .Y(n4485) );
  OAI31X4 U765 ( .A0(n3365), .A1(n2972), .A2(n4292), .B0(n3366), .Y(n4740) );
  OAI31X4 U766 ( .A0(n3372), .A1(n2963), .A2(n4293), .B0(n3373), .Y(n4735) );
  NOR2X8 U767 ( .A(n4377), .B(n3772), .Y(n4467) );
  NOR3X2 U768 ( .A(n3874), .B(n3873), .C(n3875), .Y(n3872) );
  INVX20 U769 ( .A(n3790), .Y(n4374) );
  NAND2X2 U770 ( .A(n3791), .B(n4382), .Y(n4442) );
  OA21X4 U771 ( .A0(n3790), .A1(n3852), .B0(n4472), .Y(n4468) );
  OAI21X4 U772 ( .A0(n4385), .A1(n3012), .B0(n3452), .Y(n3470) );
  OAI2BB1X4 U773 ( .A0N(n4385), .A1N(n3012), .B0(n3471), .Y(n3452) );
  OAI211X4 U774 ( .A0(n2566), .A1(n3737), .B0(n4653), .C0(n4652), .Y(n4429) );
  OAI21X4 U775 ( .A0(n4377), .A1(n4323), .B0(n4557), .Y(n4653) );
  CLKAND2X12 U776 ( .A(_data[2]), .B(n4418), .Y(n3900) );
  OAI31X2 U777 ( .A0(n4392), .A1(n2531), .A2(n3408), .B0(n3409), .Y(n3407) );
  NAND3X4 U778 ( .A(n4388), .B(n2531), .C(n3408), .Y(n3409) );
  NAND3X2 U779 ( .A(n4530), .B(n4710), .C(n4529), .Y(n4532) );
  NAND3X2 U780 ( .A(n4501), .B(n4500), .C(n4710), .Y(n4511) );
  OAI21X4 U781 ( .A0(n4705), .A1(n4704), .B0(n4703), .Y(n4709) );
  NOR2X4 U782 ( .A(n4540), .B(n2871), .Y(n4705) );
  INVX3 U783 ( .A(n4514), .Y(n4710) );
  INVX20 U784 ( .A(n3790), .Y(n4370) );
  AOI2BB2X4 U785 ( .B0(n4415), .B1(n4675), .A0N(n3907), .A1N(n3792), .Y(n4563)
         );
  OAI211X4 U786 ( .A0(n2986), .A1(n3737), .B0(n4657), .C0(n4656), .Y(n4555) );
  CLKINVX20 U787 ( .A(n4382), .Y(n4381) );
  NAND2X8 U788 ( .A(n4418), .B(_data[4]), .Y(n3791) );
  INVX20 U789 ( .A(n3791), .Y(n4371) );
  OR2X4 U790 ( .A(n4389), .B(n4382), .Y(n3888) );
  BUFX8 U791 ( .A(n4384), .Y(n4392) );
  NOR2X8 U792 ( .A(n4377), .B(n3821), .Y(n4451) );
  BUFX20 U793 ( .A(n4728), .Y(n4357) );
  NOR2X4 U794 ( .A(n3863), .B(n4451), .Y(n4440) );
  NAND2BX2 U795 ( .AN(n4571), .B(n3858), .Y(n3857) );
  NAND2X1 U796 ( .A(n4732), .B(n2849), .Y(n3858) );
  CLKINVX1 U797 ( .A(n4720), .Y(n4581) );
  NOR3X2 U798 ( .A(n4719), .B(n2852), .C(n4581), .Y(n4699) );
  AOI2BB2X1 U799 ( .B0(n3451), .B1(n3470), .A0N(n3451), .A1N(n3470), .Y(
        \accum_lpf[1][15] ) );
  NAND2X4 U800 ( .A(n4378), .B(n3772), .Y(n4470) );
  NOR2X2 U801 ( .A(_data[1]), .B(_data[3]), .Y(n4466) );
  CLKINVX1 U802 ( .A(n4349), .Y(n3896) );
  NOR2X2 U803 ( .A(n4337), .B(n4349), .Y(n4463) );
  INVX3 U804 ( .A(n4461), .Y(n4337) );
  NAND2X1 U805 ( .A(n4391), .B(n4297), .Y(n4516) );
  OR2X1 U806 ( .A(n4368), .B(n4313), .Y(n4554) );
  NAND2X2 U807 ( .A(n4721), .B(n4701), .Y(n4538) );
  NOR2X1 U808 ( .A(n4376), .B(n2755), .Y(n4608) );
  NAND2X1 U809 ( .A(n2970), .B(n3367), .Y(n3365) );
  NAND2X1 U810 ( .A(n2961), .B(n3374), .Y(n3372) );
  NOR2X1 U811 ( .A(n4389), .B(n4310), .Y(n4514) );
  NOR2X1 U812 ( .A(n4552), .B(n4550), .Y(n4478) );
  OAI22XL U813 ( .A0(n4385), .A1(n2984), .B0(n4390), .B1(n4326), .Y(n3579) );
  OAI21X2 U814 ( .A0(n4377), .A1(n4320), .B0(n4563), .Y(n4657) );
  OAI21X2 U815 ( .A0(n4429), .A1(n4427), .B0(n4426), .Y(n3472) );
  OAI21X1 U816 ( .A0(n3907), .A1(n4296), .B0(n4544), .Y(n4599) );
  AND2X8 U817 ( .A(_data[5]), .B(n4418), .Y(n4731) );
  XNOR2X1 U818 ( .A(n3867), .B(n2854), .Y(\accum_lpf[14][12] ) );
  OAI2BB2X2 U819 ( .B0(n4389), .B1(n4343), .A0N(n4389), .A1N(n4343), .Y(n3433)
         );
  XNOR2X2 U820 ( .A(n3557), .B(n3764), .Y(\accum_hpf[7][15] ) );
  NOR2X1 U821 ( .A(n3837), .B(n3838), .Y(\accum_hpf[14][15] ) );
  NOR2BX1 U822 ( .AN(n3839), .B(n4541), .Y(n3838) );
  XOR2X1 U823 ( .A(n3407), .B(n2588), .Y(\accum_lpf[8][16] ) );
  AOI2BB1X1 U824 ( .A0N(n4366), .A1N(n4338), .B0(n3877), .Y(n3870) );
  NAND2X1 U825 ( .A(n4488), .B(n4328), .Y(n3871) );
  AND2X2 U826 ( .A(_data[0]), .B(n4476), .Y(n4671) );
  NOR2X1 U827 ( .A(n3772), .B(n4294), .Y(n3766) );
  NOR2X1 U828 ( .A(n3772), .B(n4294), .Y(n4584) );
  BUFX4 U829 ( .A(_data[4]), .Y(n3772) );
  NAND2X8 U830 ( .A(n3846), .B(n3823), .Y(n4472) );
  NAND2X2 U831 ( .A(n3770), .B(n3556), .Y(n3554) );
  NAND3X2 U832 ( .A(n4388), .B(n2761), .C(n3555), .Y(n3556) );
  OR3X4 U833 ( .A(n3555), .B(n2761), .C(n4392), .Y(n3770) );
  INVX16 U834 ( .A(n3863), .Y(n3907) );
  CLKINVX12 U835 ( .A(n3899), .Y(n3681) );
  NOR2X4 U836 ( .A(n4448), .B(n3863), .Y(n4449) );
  INVX16 U837 ( .A(n3852), .Y(n4378) );
  XNOR2X4 U838 ( .A(_data[0]), .B(_data[1]), .Y(n3881) );
  CLKXOR2X8 U839 ( .A(n3859), .B(n3860), .Y(n4728) );
  NAND2X4 U840 ( .A(n4459), .B(n4349), .Y(n4460) );
  XNOR2XL U841 ( .A(n4616), .B(n4615), .Y(\accum_lpf[7][13] ) );
  CLKBUFX3 U842 ( .A(n4613), .Y(n3768) );
  OR2XL U843 ( .A(n4378), .B(n2756), .Y(n4613) );
  CLKINVX20 U844 ( .A(n4731), .Y(n4382) );
  BUFX20 U845 ( .A(n4383), .Y(n4387) );
  INVX4 U846 ( .A(n3853), .Y(n3902) );
  INVX12 U847 ( .A(n3844), .Y(n4379) );
  BUFX20 U848 ( .A(n3845), .Y(n4368) );
  BUFX20 U849 ( .A(n4723), .Y(n4344) );
  ACHCONX4 U850 ( .A(n4334), .B(n4375), .CI(n3411), .CON(n3408) );
  BUFX20 U851 ( .A(n4384), .Y(n4389) );
  AO21X4 U852 ( .A0(n4620), .A1(n4625), .B0(n4433), .Y(n4432) );
  OR3X2 U853 ( .A(n4420), .B(n4608), .C(n4667), .Y(n3771) );
  NAND2X4 U854 ( .A(n3771), .B(n4419), .Y(n4421) );
  AOI2BB2X1 U855 ( .B0(n4341), .B1(n3883), .A0N(n4389), .A1N(n2984), .Y(
        \accum_hpf[1][16] ) );
  NAND2XL U856 ( .A(n4611), .B(n4612), .Y(n4614) );
  BUFX20 U857 ( .A(n4383), .Y(n4388) );
  OAI2BB1X1 U858 ( .A0N(n4325), .A1N(n4371), .B0(n4660), .Y(n4575) );
  OAI2BB1X2 U859 ( .A0N(n2550), .A1N(n3791), .B0(n4578), .Y(n4594) );
  BUFX16 U860 ( .A(n4731), .Y(n3820) );
  OAI21X1 U861 ( .A0(n4386), .A1(n4326), .B0(n3577), .Y(n3576) );
  OAI2BB1XL U862 ( .A0N(n2989), .A1N(n3790), .B0(n4673), .Y(\accum_lpf[1][1] )
         );
  AO21XL U863 ( .A0(n3790), .A1(n2843), .B0(n4671), .Y(\accum_lpf[14][1] ) );
  OR2X6 U864 ( .A(n4467), .B(n4466), .Y(n4469) );
  AOI21X4 U865 ( .A0(n4441), .A1(n4440), .B0(n3862), .Y(n3859) );
  OAI21X4 U866 ( .A0(n4447), .A1(n3791), .B0(n4465), .Y(n4441) );
  OAI21X4 U867 ( .A0(n4376), .A1(n4311), .B0(n4671), .Y(n4559) );
  NOR2X6 U868 ( .A(n4481), .B(n4482), .Y(n4595) );
  CLKINVX20 U869 ( .A(n4382), .Y(n4380) );
  XOR2X4 U870 ( .A(n4716), .B(n2871), .Y(\accum_hpf[14][13] ) );
  MXI2X4 U871 ( .A(n4715), .B(n4714), .S0(n4389), .Y(n4716) );
  OAI221X2 U872 ( .A0(n4375), .A1(n2984), .B0(n4389), .B1(n2984), .C0(n3580), 
        .Y(n3577) );
  XOR2X2 U873 ( .A(n4371), .B(n4730), .Y(n3891) );
  NAND3X6 U874 ( .A(n3830), .B(n3829), .C(n3828), .Y(n3827) );
  OA22X4 U875 ( .A0(n4540), .A1(n4702), .B0(n4385), .B1(n2871), .Y(n4541) );
  AOI22X1 U876 ( .A0(n3470), .A1(n3843), .B0(n3012), .B1(n4386), .Y(
        \accum_lpf[1][16] ) );
  AOI2BB2X4 U877 ( .B0(n3455), .B1(n3456), .A0N(n2513), .A1N(n4375), .Y(n3471)
         );
  XNOR2X4 U878 ( .A(n3824), .B(n2587), .Y(\accum_hpf[8][16] ) );
  NAND2X2 U879 ( .A(n3825), .B(n3826), .Y(n3824) );
  OAI21X4 U880 ( .A0(n2536), .A1(n4375), .B0(n4688), .Y(n4689) );
  AOI2BB1X1 U881 ( .A0N(n4564), .A1N(n4551), .B0(n4550), .Y(n4585) );
  OR2X1 U882 ( .A(n2851), .B(n2850), .Y(n3864) );
  NOR2X4 U883 ( .A(n4372), .B(n3820), .Y(n4464) );
  NOR2X1 U884 ( .A(_data[6]), .B(n2865), .Y(n4527) );
  NAND2X2 U885 ( .A(n4382), .B(n4391), .Y(n4456) );
  NAND2X2 U886 ( .A(n4385), .B(n4730), .Y(n4455) );
  CLKINVX1 U887 ( .A(n4470), .Y(n3848) );
  NAND2X2 U888 ( .A(n4376), .B(n4378), .Y(n4444) );
  NOR2X1 U889 ( .A(n4526), .B(n4525), .Y(n4533) );
  CLKINVX1 U890 ( .A(n4524), .Y(n4526) );
  CLKINVX1 U891 ( .A(n4516), .Y(n4517) );
  NAND2X1 U892 ( .A(n4371), .B(n2863), .Y(n4525) );
  NOR2X1 U893 ( .A(n3907), .B(n2693), .Y(n4621) );
  NOR2X1 U894 ( .A(n3907), .B(n2573), .Y(n4637) );
  NAND3X1 U895 ( .A(n2966), .B(n2964), .C(n2965), .Y(n3370) );
  NOR2BX1 U896 ( .AN(n2967), .B(n3370), .Y(n3369) );
  NAND2X1 U897 ( .A(n2968), .B(n3369), .Y(n3368) );
  NAND3X1 U898 ( .A(n2957), .B(n2955), .C(n2956), .Y(n3377) );
  NOR2BX1 U899 ( .AN(n2958), .B(n3377), .Y(n3376) );
  NAND2X1 U900 ( .A(n2959), .B(n3376), .Y(n3375) );
  NAND2X1 U901 ( .A(n4730), .B(n4322), .Y(n4567) );
  NOR2X1 U902 ( .A(n3820), .B(n4308), .Y(n4571) );
  NOR2X1 U903 ( .A(n4389), .B(n4298), .Y(n4523) );
  OAI22XL U904 ( .A0(n4385), .A1(n2984), .B0(n4390), .B1(n4326), .Y(n3575) );
  NOR2X1 U905 ( .A(n4371), .B(n2696), .Y(n4618) );
  NAND2X1 U906 ( .A(n4378), .B(n2694), .Y(n4625) );
  OA21XL U907 ( .A0(n4621), .A1(n4663), .B0(n4620), .Y(n4624) );
  NAND2X1 U908 ( .A(n4370), .B(n2525), .Y(n4665) );
  NOR2X1 U909 ( .A(n4371), .B(n2554), .Y(n4633) );
  OR2X1 U910 ( .A(n4378), .B(n2556), .Y(n4642) );
  OAI2BB1X1 U911 ( .A0N(n4391), .A1N(n3876), .B0(n4490), .Y(n3875) );
  OR2X1 U912 ( .A(n2857), .B(n2856), .Y(n3876) );
  OAI22XL U913 ( .A0(n4338), .A1(n3878), .B0(n2857), .B1(n4389), .Y(n3877) );
  NOR2X1 U914 ( .A(n4339), .B(n4490), .Y(n3878) );
  NOR2X1 U915 ( .A(n4392), .B(n2699), .Y(n3836) );
  NAND2BX2 U916 ( .AN(n2991), .B(n4374), .Y(n4675) );
  OR2X1 U917 ( .A(n4378), .B(n2694), .Y(n4626) );
  NAND2X1 U918 ( .A(n4370), .B(n2692), .Y(n4663) );
  NOR2X1 U919 ( .A(n4371), .B(n2758), .Y(n4604) );
  XOR2X1 U920 ( .A(n4341), .B(n3575), .Y(\accum_hpf[1][14] ) );
  NAND2BX1 U921 ( .AN(n4699), .B(n4646), .Y(n4582) );
  XOR2X1 U922 ( .A(n3576), .B(n3575), .Y(\accum_hpf[1][9] ) );
  OAI21XL U923 ( .A0(n4585), .A1(n3766), .B0(n4583), .Y(n4587) );
  OAI21XL U924 ( .A0(n4590), .A1(n4589), .B0(n4588), .Y(n4592) );
  NAND2X1 U925 ( .A(n4713), .B(n2870), .Y(n4714) );
  AOI2BB1X1 U926 ( .A0N(n3840), .A1N(n4390), .B0(n4542), .Y(n3839) );
  NOR2X1 U927 ( .A(n4719), .B(n4718), .Y(n3865) );
  OAI21XL U928 ( .A0(n4694), .A1(n4693), .B0(n4692), .Y(n4697) );
  OAI21XL U929 ( .A0(n4375), .A1(n2984), .B0(n3580), .Y(n3578) );
  OAI2BB2XL U930 ( .B0(n4386), .B1(n3012), .A0N(n3451), .A1N(n3452), .Y(
        \accum_lpf[1][9] ) );
  OR2XL U931 ( .A(n4385), .B(n3012), .Y(n3843) );
  OR2XL U932 ( .A(n4386), .B(n4326), .Y(n3883) );
  MXI2X1 U933 ( .A(n3833), .B(n3834), .S0(n4343), .Y(\accum_lpf[7][16] ) );
  XOR2X1 U934 ( .A(n3835), .B(n2700), .Y(n3834) );
  XOR2X1 U935 ( .A(n3836), .B(n3795), .Y(n3833) );
  NAND2XL U936 ( .A(n4388), .B(n2699), .Y(n3835) );
  NAND2X8 U937 ( .A(_data[0]), .B(n4418), .Y(n3790) );
  NAND2X8 U938 ( .A(n3901), .B(n4475), .Y(n3676) );
  CLKXOR2X8 U939 ( .A(n4446), .B(n4371), .Y(n4727) );
  CLKBUFX3 U940 ( .A(n4410), .Y(n4407) );
  CLKBUFX3 U941 ( .A(n1983), .Y(n4411) );
  CLKBUFX3 U942 ( .A(n4406), .Y(n4399) );
  CLKBUFX3 U943 ( .A(n4405), .Y(n4400) );
  CLKBUFX3 U944 ( .A(n4396), .Y(n4402) );
  CLKBUFX3 U945 ( .A(n4396), .Y(n4414) );
  INVX12 U946 ( .A(n3793), .Y(y_valid) );
  NAND2X1 U947 ( .A(n2854), .B(n2852), .Y(n4717) );
  NOR2X1 U948 ( .A(n2871), .B(n2872), .Y(n3840) );
  OAI211X1 U949 ( .A0(n4707), .A1(n2871), .B0(n4335), .C0(n4706), .Y(n3842) );
  BUFX12 U950 ( .A(n4738), .Y(y[2]) );
  OAI2BB2XL U951 ( .B0(n3377), .B1(n2958), .A0N(n3377), .A1N(n2958), .Y(n4738)
         );
  BUFX12 U952 ( .A(n4743), .Y(z[2]) );
  OAI2BB2XL U953 ( .B0(n3370), .B1(n2967), .A0N(n3370), .A1N(n2967), .Y(n4743)
         );
  XOR2X1 U954 ( .A(n3375), .B(n2960), .Y(n3802) );
  INVX12 U955 ( .A(n3802), .Y(y[4]) );
  XOR2X1 U956 ( .A(n3368), .B(n2969), .Y(n3804) );
  INVX12 U957 ( .A(n3804), .Y(z[4]) );
  XNOR2X1 U958 ( .A(n3378), .B(n2957), .Y(n3806) );
  INVX12 U959 ( .A(n3806), .Y(y[1]) );
  XNOR2X1 U960 ( .A(n3371), .B(n2966), .Y(n3808) );
  INVX12 U961 ( .A(n3808), .Y(z[1]) );
  XNOR2X1 U962 ( .A(n3376), .B(n2959), .Y(n3810) );
  INVX12 U963 ( .A(n3810), .Y(y[3]) );
  XNOR2X1 U964 ( .A(n3369), .B(n2968), .Y(n3812) );
  INVX12 U965 ( .A(n3812), .Y(z[3]) );
  BUFX12 U966 ( .A(n4739), .Y(y[0]) );
  AOI2BB2X1 U967 ( .B0(n2955), .B1(n2956), .A0N(n2955), .A1N(n2956), .Y(n4739)
         );
  BUFX12 U968 ( .A(n4744), .Y(z[0]) );
  AOI2BB2X1 U969 ( .B0(n2964), .B1(n2965), .A0N(n2964), .A1N(n2965), .Y(n4744)
         );
  INVX12 U970 ( .A(n3816), .Y(z_valid) );
  NAND2BXL U971 ( .AN(n3008), .B(n3013), .Y(n2496) );
  INVX4 U972 ( .A(n3819), .Y(n1983) );
  NOR2X8 U973 ( .A(n3822), .B(n2982), .Y(n3844) );
  CLKBUFX3 U974 ( .A(_data[1]), .Y(n3823) );
  AOI2BB2X4 U975 ( .B0(n4555), .B1(n4417), .A0N(n4416), .A1N(n4588), .Y(n3597)
         );
  INVX20 U976 ( .A(n3832), .Y(n4725) );
  XOR2X4 U977 ( .A(n3554), .B(n2762), .Y(\accum_hpf[7][16] ) );
  BUFX20 U978 ( .A(n3845), .Y(n3846) );
  NAND2X4 U979 ( .A(n4444), .B(n4371), .Y(n3904) );
  XNOR2XL U980 ( .A(n4371), .B(n2863), .Y(n4647) );
  NAND2X1 U981 ( .A(n4371), .B(n2554), .Y(n4632) );
  NAND2X1 U982 ( .A(n4371), .B(n4301), .Y(n4588) );
  OAI2BB1X4 U983 ( .A0N(n4454), .A1N(n3827), .B0(n4455), .Y(\mulitply3[10] )
         );
  XNOR2X4 U984 ( .A(n3827), .B(n4457), .Y(n4729) );
  BUFX20 U985 ( .A(\mulitply3[10] ), .Y(n4350) );
  OR2X8 U986 ( .A(n4475), .B(n4466), .Y(n3831) );
  OAI21X4 U987 ( .A0(n4472), .A1(n4467), .B0(n3831), .Y(n4458) );
  BUFX20 U988 ( .A(n3674), .Y(n4355) );
  XNOR2X4 U989 ( .A(_data[0]), .B(_data[2]), .Y(n3884) );
  NAND2X1 U990 ( .A(n3821), .B(n4507), .Y(n4669) );
  NAND3X1 U991 ( .A(n4290), .B(_data[0]), .C(n4493), .Y(n4678) );
  OAI2BB1XL U992 ( .A0N(n2991), .A1N(n3790), .B0(n4675), .Y(\accum_hpf[1][1] )
         );
  OAI2BB1XL U993 ( .A0N(n2527), .A1N(n3790), .B0(n4669), .Y(\accum_hpf[8][8] )
         );
  NOR2XL U994 ( .A(n3790), .B(n3029), .Y(n4565) );
  AND2X8 U995 ( .A(n3869), .B(n4455), .Y(n3832) );
  OAI22X4 U996 ( .A0(n3736), .A1(n3852), .B0(n3791), .B1(n4379), .Y(n3853) );
  XOR2XL U997 ( .A(n4651), .B(n3791), .Y(\accum_lpf[0][4] ) );
  NAND2X1 U998 ( .A(n4651), .B(n3791), .Y(n4686) );
  NOR2X2 U999 ( .A(n3791), .B(n2847), .Y(n4552) );
  XOR2X4 U1000 ( .A(n4474), .B(n3791), .Y(n4724) );
  BUFX20 U1001 ( .A(n3845), .Y(n4372) );
  XOR2X4 U1002 ( .A(n4376), .B(n3846), .Y(n3879) );
  NOR2X2 U1003 ( .A(n3846), .B(n4307), .Y(n4551) );
  BUFX20 U1004 ( .A(n3880), .Y(n4358) );
  OAI21X4 U1005 ( .A0(n4468), .A1(n4469), .B0(n3849), .Y(n3851) );
  NAND3X8 U1006 ( .A(n3851), .B(n3850), .C(n3847), .Y(\mulitply5[8] ) );
  XOR2X4 U1007 ( .A(n4472), .B(n3852), .Y(n4473) );
  OA21X4 U1008 ( .A0(n2845), .A1(n3852), .B0(n4559), .Y(n4549) );
  NAND2X2 U1009 ( .A(n4443), .B(n3852), .Y(n4445) );
  BUFX20 U1010 ( .A(n3906), .Y(n4340) );
  XOR2X4 U1011 ( .A(n3854), .B(n2874), .Y(\accum_hpf[14][16] ) );
  NOR2X6 U1012 ( .A(n3855), .B(n3856), .Y(n3854) );
  OA21X4 U1013 ( .A0(n2873), .A1(n4707), .B0(n4539), .Y(n3856) );
  OAI22X4 U1014 ( .A0(n4539), .A1(n4389), .B0(n4705), .B1(n4389), .Y(n3855) );
  NOR2X6 U1015 ( .A(n4572), .B(n3857), .Y(n4481) );
  OR2X8 U1016 ( .A(n4382), .B(n4375), .Y(n3861) );
  NAND2X8 U1017 ( .A(_data[1]), .B(n4418), .Y(n3863) );
  INVX20 U1018 ( .A(n3863), .Y(n4376) );
  OAI21X4 U1019 ( .A0(n4595), .A1(n3864), .B0(n4389), .Y(n4342) );
  XOR2X1 U1020 ( .A(n3865), .B(n4385), .Y(n3866) );
  NAND2X8 U1021 ( .A(_data[7]), .B(n4418), .Y(n4733) );
  OAI21X4 U1022 ( .A0(n4458), .A1(n4462), .B0(n4461), .Y(n4453) );
  OAI211X2 U1023 ( .A0(n4382), .A1(n4389), .B0(n4453), .C0(n4459), .Y(n3868)
         );
  NAND3X4 U1024 ( .A(n3868), .B(n4454), .C(n4456), .Y(n3869) );
  XNOR2X4 U1025 ( .A(n3879), .B(n4475), .Y(n3880) );
  AO21X4 U1026 ( .A0(n4378), .A1(n4368), .B0(n4447), .Y(n4450) );
  NOR2X4 U1027 ( .A(n3881), .B(n2982), .Y(n3882) );
  BUFX20 U1028 ( .A(n3882), .Y(n4373) );
  NOR2X8 U1029 ( .A(n3884), .B(n2982), .Y(n4723) );
  XNOR2X4 U1030 ( .A(n3885), .B(n4457), .Y(net6383) );
  AOI21X4 U1031 ( .A0(n4453), .A1(n3886), .B0(n3887), .Y(n3885) );
  OA21X4 U1032 ( .A0(n3889), .A1(n4464), .B0(n4472), .Y(n3890) );
  OAI21X4 U1033 ( .A0(n3890), .A1(n4467), .B0(n4465), .Y(n3892) );
  XOR2X4 U1034 ( .A(n3892), .B(n3891), .Y(n3674) );
  OAI21X4 U1035 ( .A0(n4458), .A1(n4462), .B0(n4463), .Y(n3895) );
  AOI2BB2X4 U1036 ( .B0(n3896), .B1(n3897), .A0N(n4460), .A1N(n4461), .Y(n3894) );
  NAND2BX4 U1037 ( .AN(n4458), .B(n3898), .Y(n3893) );
  NOR2X6 U1038 ( .A(n4460), .B(n4462), .Y(n3898) );
  CLKXOR2X8 U1039 ( .A(n4449), .B(n4450), .Y(n3899) );
  OAI21X4 U1040 ( .A0(n4379), .A1(n4443), .B0(n3902), .Y(n3903) );
  MXI2X4 U1041 ( .A(n3904), .B(n4371), .S0(n3903), .Y(n3905) );
  XOR2X4 U1042 ( .A(n3905), .B(n4381), .Y(n3906) );
  AOI2BB2X4 U1043 ( .B0(n4434), .B1(n4626), .A0N(n4315), .A1N(n3737), .Y(n4619) );
  CLKBUFX4 U1044 ( .A(n4733), .Y(n4384) );
  NAND2X6 U1045 ( .A(n4486), .B(n4489), .Y(n4491) );
  INVX6 U1046 ( .A(n4499), .Y(n4500) );
  CLKINVX3 U1047 ( .A(n4498), .Y(n4501) );
  CLKINVX3 U1048 ( .A(n4481), .Y(n4568) );
  NOR2X4 U1049 ( .A(n4377), .B(n4374), .Y(n4448) );
  AO21X4 U1050 ( .A0(n4607), .A1(n4612), .B0(n4420), .Y(n4419) );
  OA21XL U1051 ( .A0(n4608), .A1(n4667), .B0(n4607), .Y(n4611) );
  AOI2BB2XL U1052 ( .B0(n3411), .B1(n3412), .A0N(n3411), .A1N(n3412), .Y(
        \accum_lpf[8][14] ) );
  OA21XL U1053 ( .A0(n4637), .A1(n4665), .B0(n4636), .Y(n4640) );
  AOI2BB2XL U1054 ( .B0(n3558), .B1(n3559), .A0N(n3558), .A1N(n3559), .Y(
        \accum_hpf[7][14] ) );
  XOR2XL U1055 ( .A(n4606), .B(n4605), .Y(\accum_hpf[7][12] ) );
  AOI2BB2X4 U1056 ( .B0(n4421), .B1(n3768), .A0N(n4314), .A1N(n3737), .Y(n4606) );
  NOR4X8 U1057 ( .A(n4720), .B(n4288), .C(n4717), .D(n4329), .Y(n4694) );
  OAI2BB2X2 U1058 ( .B0(n4390), .B1(n3555), .A0N(n4390), .A1N(n3555), .Y(n3557) );
  XOR2XL U1059 ( .A(n4635), .B(n4634), .Y(\accum_lpf[8][12] ) );
  AOI2BB2X4 U1060 ( .B0(n4438), .B1(n4642), .A0N(n4316), .A1N(n3737), .Y(n4635) );
  AOI2BB2X4 U1061 ( .B0(n2531), .B1(n3410), .A0N(n2531), .A1N(n3410), .Y(
        \accum_lpf[8][15] ) );
  OAI2BB2X4 U1062 ( .B0(n4389), .B1(n3408), .A0N(n4389), .A1N(n3408), .Y(n3410) );
  MXI2XL U1063 ( .A(n4313), .B(n2986), .S0(n4368), .Y(n4658) );
  MXI2XL U1064 ( .A(n2695), .B(n4315), .S0(n4368), .Y(n4622) );
  MXI2XL U1065 ( .A(n4312), .B(n2566), .S0(n4368), .Y(n4654) );
  XOR2XL U1066 ( .A(n4684), .B(n4368), .Y(\accum_lpf[0][3] ) );
  NAND2X1 U1067 ( .A(n4555), .B(n4554), .Y(n4590) );
  BUFX4 U1068 ( .A(n4395), .Y(n4401) );
  CLKBUFX3 U1069 ( .A(n1983), .Y(n4394) );
  AO21X1 U1070 ( .A0(n4549), .A1(n4558), .B0(n4548), .Y(n4564) );
  CLKINVX1 U1071 ( .A(_data[6]), .Y(n4732) );
  NOR2X1 U1072 ( .A(n4523), .B(n4522), .Y(n4535) );
  XOR2XL U1073 ( .A(n4670), .B(n3907), .Y(\accum_hpf[8][9] ) );
  XOR2XL U1074 ( .A(n4669), .B(n4296), .Y(n4670) );
  NAND2XL U1075 ( .A(n4657), .B(n4656), .Y(n4659) );
  XOR2XL U1076 ( .A(n4378), .B(n2586), .Y(n4556) );
  XOR2XL U1077 ( .A(n4378), .B(n4324), .Y(n4545) );
  XOR2XL U1078 ( .A(n4378), .B(n2845), .Y(n4560) );
  NAND2XL U1079 ( .A(n4559), .B(n4558), .Y(n4561) );
  NAND2BXL U1080 ( .AN(n4604), .B(n4603), .Y(n4605) );
  XOR2XL U1081 ( .A(n4730), .B(n2849), .Y(n4573) );
  XOR2XL U1082 ( .A(n4730), .B(n4336), .Y(n4580) );
  XOR2XL U1083 ( .A(n4730), .B(n4330), .Y(n4649) );
  CLKBUFX3 U1084 ( .A(n1983), .Y(n4393) );
  CLKBUFX3 U1085 ( .A(n1983), .Y(n4395) );
  CLKBUFX3 U1086 ( .A(n1983), .Y(n4410) );
  INVX1 U1087 ( .A(n4510), .Y(n4711) );
  AOI222X2 U1088 ( .A0(n3434), .A1(n4375), .B0(n3434), .B1(n4331), .C0(n4375), 
        .C1(n4331), .Y(n3431) );
  OR2X4 U1089 ( .A(n4713), .B(n2870), .Y(n4715) );
  NAND2X2 U1090 ( .A(n3820), .B(n4308), .Y(n4477) );
  INVX3 U1091 ( .A(n2982), .Y(n4418) );
  XOR2XL U1092 ( .A(n4672), .B(n3907), .Y(\accum_lpf[14][2] ) );
  XOR2XL U1093 ( .A(n4370), .B(n2525), .Y(\accum_lpf[8][8] ) );
  XOR2XL U1094 ( .A(n4370), .B(n2754), .Y(\accum_hpf[7][8] ) );
  XOR2XL U1095 ( .A(n3907), .B(n2860), .Y(n4566) );
  MXI2XL U1096 ( .A(n2693), .B(n4317), .S0(n3907), .Y(n4664) );
  OAI21XL U1097 ( .A0(n4629), .A1(n4628), .B0(n4627), .Y(\accum_lpf[7][10] )
         );
  XNOR2XL U1098 ( .A(n4378), .B(n2861), .Y(n4682) );
  XOR2XL U1099 ( .A(n4378), .B(n2985), .Y(n4562) );
  CLKBUFX2 U1100 ( .A(n1983), .Y(n4408) );
  NAND2X1 U1101 ( .A(n4429), .B(n4428), .Y(n4547) );
  CLKBUFX2 U1102 ( .A(n1983), .Y(n4406) );
  OAI21XL U1103 ( .A0(n4371), .A1(n4294), .B0(n4583), .Y(n4553) );
  INVX1 U1104 ( .A(n4552), .Y(n4583) );
  NOR3X2 U1105 ( .A(n4677), .B(n2865), .C(n4528), .Y(n4496) );
  OAI211XL U1106 ( .A0(n2866), .A1(n4298), .B0(n4710), .C0(n4508), .Y(n4506)
         );
  NOR2X2 U1107 ( .A(n4372), .B(n2555), .Y(n4437) );
  OAI211X2 U1108 ( .A0(n4385), .A1(n4691), .B0(n4342), .C0(n4485), .Y(n4486)
         );
  NOR2X1 U1109 ( .A(n4389), .B(n4297), .Y(n4522) );
  MXI2XL U1110 ( .A(n4300), .B(n2516), .S0(n3907), .Y(n4674) );
  MXI2XL U1111 ( .A(n2553), .B(n4305), .S0(n4380), .Y(n4630) );
  CLKBUFX2 U1112 ( .A(n1983), .Y(n4413) );
  CLKBUFX2 U1113 ( .A(n1983), .Y(n4405) );
  CLKBUFX2 U1114 ( .A(n1983), .Y(n4404) );
  AOI2BB1X2 U1115 ( .A0N(n4661), .A1N(n4600), .B0(n4575), .Y(n4576) );
  NAND2X1 U1116 ( .A(n4371), .B(n2696), .Y(n4617) );
  OAI31X2 U1117 ( .A0(n4433), .A1(n4621), .A2(n4663), .B0(n4432), .Y(n4434) );
  NOR2X2 U1118 ( .A(n4368), .B(n2695), .Y(n4433) );
  OAI31X2 U1119 ( .A0(n4437), .A1(n4637), .A2(n4665), .B0(n4436), .Y(n4438) );
  OAI21X4 U1120 ( .A0(n4533), .A1(n4532), .B0(n4531), .Y(n4534) );
  NOR2X2 U1121 ( .A(n4680), .B(n4492), .Y(n4495) );
  INVX20 U1122 ( .A(n4351), .Y(n4352) );
  NAND2XL U1123 ( .A(n2984), .B(n4391), .Y(n3596) );
  XOR2XL U1124 ( .A(n4370), .B(n2692), .Y(\accum_lpf[7][8] ) );
  MXI2XL U1125 ( .A(n3792), .B(n2990), .S0(n3907), .Y(n4676) );
  XNOR2XL U1126 ( .A(n4370), .B(n3029), .Y(\accum_hpf[14][1] ) );
  CLKINVX1 U1127 ( .A(n4428), .Y(n4425) );
  CLKINVX1 U1128 ( .A(n4519), .Y(n4497) );
  AOI211X4 U1129 ( .A0(n4519), .A1(n4330), .B0(n4496), .C0(n4375), .Y(n4499)
         );
  OAI21X4 U1130 ( .A0(n4648), .A1(n4520), .B0(n4525), .Y(n4677) );
  NAND2X2 U1131 ( .A(n4374), .B(n2754), .Y(n4667) );
  AOI21XL U1132 ( .A0(n4390), .A1(n4691), .B0(n4289), .Y(n4693) );
  INVX1 U1133 ( .A(n4489), .Y(n4339) );
  NAND2X2 U1134 ( .A(n4391), .B(n4298), .Y(n4508) );
  AOI22X4 U1135 ( .A0(n4495), .A1(n4494), .B0(n4368), .B1(n2862), .Y(n4648) );
  XOR2X4 U1136 ( .A(n4368), .B(n4731), .Y(n4471) );
  XNOR2XL U1137 ( .A(n4546), .B(n4378), .Y(\accum_lpf[0][2] ) );
  NOR2XL U1138 ( .A(n3907), .B(n4370), .Y(n4546) );
  MXI2XL U1139 ( .A(n2573), .B(n4318), .S0(n3907), .Y(n4666) );
  MXI2XL U1140 ( .A(n2755), .B(n4319), .S0(n3907), .Y(n4668) );
  CLKINVX2 U1141 ( .A(N8), .Y(n4734) );
  MXI2XL U1142 ( .A(n2759), .B(n4306), .S0(n4381), .Y(n4644) );
  BUFX4 U1143 ( .A(n4396), .Y(n4403) );
  INVX3 U1144 ( .A(n4661), .Y(n4601) );
  NOR2X4 U1145 ( .A(n4499), .B(n4498), .Y(n4712) );
  NOR2BX2 U1146 ( .AN(n2865), .B(n4650), .Y(n4498) );
  OAI21X4 U1147 ( .A0(n4719), .A1(n4581), .B0(n2852), .Y(n4646) );
  INVX8 U1148 ( .A(n4342), .Y(n4719) );
  OAI31X2 U1149 ( .A0(n4551), .A1(n4548), .A2(n4584), .B0(n4477), .Y(n4479) );
  NAND3XL U1150 ( .A(n2873), .B(n2872), .C(n2871), .Y(n4537) );
  CLKINVX1 U1151 ( .A(n4520), .Y(n4521) );
  NOR2X4 U1152 ( .A(n4518), .B(n4517), .Y(n4531) );
  NAND2BX2 U1153 ( .AN(n4510), .B(n4508), .Y(n4518) );
  MXI2X4 U1154 ( .A(n4445), .B(n4444), .S0(n4379), .Y(n4446) );
  BUFX20 U1155 ( .A(net6383), .Y(n4348) );
  BUFX8 U1156 ( .A(net6383), .Y(n4347) );
  NAND2X6 U1157 ( .A(n4372), .B(n4731), .Y(n4465) );
  AND2X2 U1158 ( .A(n4679), .B(n4678), .Y(n4683) );
  CLKBUFX4 U1159 ( .A(n1983), .Y(n4396) );
  BUFX4 U1160 ( .A(n4411), .Y(n4397) );
  BUFX4 U1161 ( .A(n4407), .Y(n4398) );
  OAI21X4 U1162 ( .A0(n4606), .A1(n4604), .B0(n4603), .Y(n4645) );
  OAI21X4 U1163 ( .A0(n4635), .A1(n4633), .B0(n4632), .Y(n4631) );
  OAI21X2 U1164 ( .A0(n4385), .A1(n2869), .B0(n4721), .Y(n4685) );
  AOI2BB2X4 U1165 ( .B0(n4480), .B1(n4479), .A0N(n4478), .A1N(n3766), .Y(n4572) );
  NAND3X4 U1166 ( .A(n4536), .B(n4535), .C(n4534), .Y(n4721) );
  NAND2X1 U1167 ( .A(n4730), .B(n2865), .Y(n4529) );
  NAND4BX2 U1168 ( .AN(n4648), .B(n4531), .C(n4524), .D(n4521), .Y(n4536) );
  AOI2BB2X1 U1169 ( .B0(n3372), .B1(n4293), .A0N(n3372), .A1N(n4293), .Y(n4736) );
  AOI2BB2X1 U1170 ( .B0(n3365), .B1(n4292), .A0N(n3365), .A1N(n4292), .Y(n4741) );
  OAI2BB1X1 U1171 ( .A0N(n4600), .A1N(n4599), .B0(n4598), .Y(n4662) );
  NOR2X1 U1172 ( .A(n4572), .B(n4571), .Y(n4574) );
  CLKINVX1 U1173 ( .A(n4431), .Y(n4427) );
  OAI22X4 U1174 ( .A0(n4616), .A1(n4435), .B0(n4380), .B1(n2697), .Y(n3434) );
  OAI21X4 U1175 ( .A0(n4619), .A1(n4618), .B0(n4617), .Y(n4616) );
  OAI22X4 U1176 ( .A0(n4645), .A1(n4422), .B0(n4380), .B1(n2759), .Y(n3558) );
  OAI22X4 U1177 ( .A0(n4631), .A1(n4439), .B0(n4380), .B1(n2553), .Y(n3411) );
  NOR4XL U1178 ( .A(n4299), .B(n2852), .C(n2856), .D(n2855), .Y(n4695) );
  OAI2BB1X4 U1179 ( .A0N(n2869), .A1N(n4385), .B0(n4685), .Y(n4713) );
  INVX3 U1180 ( .A(n4482), .Y(n4483) );
  NOR2X2 U1181 ( .A(n4377), .B(n4321), .Y(n4548) );
  NAND2X6 U1182 ( .A(n4454), .B(n4455), .Y(n4457) );
  XNOR2X4 U1183 ( .A(n4390), .B(n4731), .Y(n4349) );
  BUFX12 U1184 ( .A(n4742), .Y(z[5]) );
  BUFX12 U1185 ( .A(n4737), .Y(y[5]) );
  XOR2X1 U1186 ( .A(n4659), .B(n4658), .Y(\accum_hpf[1][4] ) );
  XOR2X1 U1187 ( .A(n4623), .B(n4622), .Y(\accum_lpf[7][11] ) );
  XOR2X1 U1188 ( .A(n4655), .B(n4654), .Y(\accum_lpf[1][4] ) );
  XOR2X1 U1189 ( .A(n4639), .B(n4638), .Y(\accum_lpf[8][11] ) );
  XOR2X1 U1190 ( .A(n4610), .B(n4609), .Y(\accum_hpf[7][11] ) );
  XOR2X1 U1191 ( .A(n4592), .B(n4591), .Y(\accum_hpf[1][6] ) );
  XOR2X1 U1192 ( .A(n4687), .B(n4375), .Y(\accum_lpf[0][6] ) );
  NOR2X1 U1193 ( .A(n4380), .B(n4302), .Y(n4424) );
  OAI21X2 U1194 ( .A0(n4677), .A1(n4528), .B0(n4497), .Y(n4650) );
  NOR2X2 U1195 ( .A(n4379), .B(n2846), .Y(n4550) );
  AOI2BB1X2 U1196 ( .A0N(n4538), .A1N(n4537), .B0(n4702), .Y(n4539) );
  INVX3 U1197 ( .A(n4538), .Y(n4540) );
  BUFX20 U1198 ( .A(n4729), .Y(n4356) );
  XNOR2X4 U1199 ( .A(n4450), .B(n4449), .Y(n4359) );
  XOR2X1 U1200 ( .A(n4671), .B(n2844), .Y(n4672) );
  XOR2X1 U1201 ( .A(n4566), .B(n4565), .Y(\accum_hpf[14][2] ) );
  XNOR2X1 U1202 ( .A(n4676), .B(n4675), .Y(\accum_hpf[1][2] ) );
  XNOR2X1 U1203 ( .A(n4674), .B(n4673), .Y(\accum_lpf[1][2] ) );
  AOI2BB2X1 U1204 ( .B0(n2970), .B1(n3367), .A0N(n2970), .A1N(n3367), .Y(n4742) );
  AOI2BB2X1 U1205 ( .B0(n2961), .B1(n3374), .A0N(n2961), .A1N(n3374), .Y(n4737) );
  XOR2X1 U1206 ( .A(n4668), .B(n4667), .Y(\accum_hpf[7][9] ) );
  INVX1 U1207 ( .A(n4626), .Y(n4628) );
  NAND2X1 U1208 ( .A(n4629), .B(n4626), .Y(n4623) );
  NAND2X1 U1209 ( .A(n4653), .B(n4652), .Y(n4655) );
  XOR2X1 U1210 ( .A(n4563), .B(n4562), .Y(\accum_hpf[1][3] ) );
  XOR2X1 U1211 ( .A(n4561), .B(n4560), .Y(\accum_lpf[14][3] ) );
  XNOR2X1 U1212 ( .A(n4662), .B(n4602), .Y(\accum_hpf[8][11] ) );
  NAND2X1 U1213 ( .A(n4601), .B(n4660), .Y(n4602) );
  CLKBUFX3 U1214 ( .A(n1983), .Y(n4409) );
  CLKBUFX3 U1215 ( .A(n1983), .Y(n4412) );
  XOR2X1 U1216 ( .A(n4594), .B(n4593), .Y(\accum_hpf[8][13] ) );
  XOR2X1 U1217 ( .A(n4380), .B(n4327), .Y(n4593) );
  MXI2X1 U1218 ( .A(n2555), .B(n4316), .S0(n4368), .Y(n4638) );
  NAND2X1 U1219 ( .A(n4643), .B(n4642), .Y(n4639) );
  NAND2X1 U1220 ( .A(n4640), .B(n4641), .Y(n4643) );
  MXI2X1 U1221 ( .A(n2757), .B(n4314), .S0(n4368), .Y(n4609) );
  NAND2X1 U1222 ( .A(n4614), .B(n3768), .Y(n4610) );
  XOR2X1 U1223 ( .A(n4648), .B(n4647), .Y(\accum_hpf[14][5] ) );
  NAND2BX1 U1224 ( .AN(n4633), .B(n4632), .Y(n4634) );
  XOR2X1 U1225 ( .A(n4574), .B(n4573), .Y(\accum_lpf[14][7] ) );
  MXI2X1 U1226 ( .A(n4304), .B(n2585), .S0(n4380), .Y(n4591) );
  XOR2X1 U1227 ( .A(n4570), .B(n4569), .Y(\accum_lpf[14][8] ) );
  XNOR2X1 U1228 ( .A(n4631), .B(n4630), .Y(\accum_lpf[8][13] ) );
  XNOR2X1 U1229 ( .A(n4645), .B(n4644), .Y(\accum_hpf[7][13] ) );
  NOR2X1 U1230 ( .A(n4686), .B(n4381), .Y(n4687) );
  XOR2X1 U1231 ( .A(n4688), .B(n4580), .Y(\accum_hpf[8][14] ) );
  XOR2X1 U1232 ( .A(n4650), .B(n4649), .Y(\accum_hpf[14][7] ) );
  MXI2X1 U1233 ( .A(n4596), .B(n4595), .S0(n4386), .Y(n4597) );
  NOR2X1 U1234 ( .A(n4595), .B(n2850), .Y(n4596) );
  XOR2X1 U1235 ( .A(n4722), .B(n4690), .Y(\accum_hpf[8][15] ) );
  XOR2X1 U1236 ( .A(n4391), .B(n2549), .Y(n4690) );
  XOR2X1 U1237 ( .A(n4587), .B(n4586), .Y(\accum_lpf[14][6] ) );
  XOR2X1 U1238 ( .A(n4380), .B(n2848), .Y(n4586) );
  NOR2X1 U1239 ( .A(n4381), .B(n4327), .Y(n4579) );
  NAND2X1 U1240 ( .A(n4378), .B(n4324), .Y(n4600) );
  NAND2X1 U1241 ( .A(n4601), .B(n4598), .Y(n4577) );
  NAND2BX1 U1242 ( .AN(n4378), .B(n2552), .Y(n4598) );
  NOR2XL U1243 ( .A(n2527), .B(n2982), .Y(n4507) );
  NAND2X1 U1244 ( .A(n4376), .B(n4296), .Y(n4543) );
  XOR2X1 U1245 ( .A(n4709), .B(n4708), .Y(\accum_hpf[14][14] ) );
  NAND2X1 U1246 ( .A(n4707), .B(n4706), .Y(n4708) );
  INVX1 U1247 ( .A(n4702), .Y(n4703) );
  AOI31X1 U1248 ( .A0(n4721), .A1(n2871), .A2(n4701), .B0(n4385), .Y(n4704) );
  AOI211X1 U1249 ( .A0(n4425), .A1(n4431), .B0(n4430), .C0(n4424), .Y(n4426)
         );
  NOR2X1 U1250 ( .A(n3772), .B(n4295), .Y(n4430) );
  NAND2X1 U1251 ( .A(n4378), .B(n4323), .Y(n4652) );
  AOI211X1 U1252 ( .A0(n4515), .A1(n4514), .B0(n4513), .C0(n4512), .Y(
        \accum_hpf[14][9] ) );
  AOI21X1 U1253 ( .A0(n4511), .A1(n4711), .B0(n4515), .Y(n4512) );
  NOR3X1 U1254 ( .A(n4712), .B(n4510), .C(n4509), .Y(n4513) );
  INVX1 U1255 ( .A(n4509), .Y(n4515) );
  NAND2BX1 U1256 ( .AN(n4523), .B(n4508), .Y(n4509) );
  AOI211X1 U1257 ( .A0(n4297), .A1(n4506), .B0(n4505), .C0(n4504), .Y(
        \accum_hpf[14][10] ) );
  INVX1 U1258 ( .A(n4502), .Y(n4503) );
  NOR3X1 U1259 ( .A(n4712), .B(n4518), .C(n4502), .Y(n4505) );
  NOR2X1 U1260 ( .A(n4382), .B(n4303), .Y(n4435) );
  NAND2X1 U1261 ( .A(n3907), .B(n2693), .Y(n4620) );
  AOI222X4 U1262 ( .A0(n3558), .A1(n4375), .B0(n3558), .B1(n3794), .C0(n4375), 
        .C1(n3794), .Y(n3555) );
  NOR2X1 U1263 ( .A(n4382), .B(n4306), .Y(n4422) );
  NAND2X1 U1264 ( .A(n4371), .B(n2758), .Y(n4603) );
  NOR2X1 U1265 ( .A(n4382), .B(n4305), .Y(n4439) );
  NAND2X1 U1266 ( .A(n3907), .B(n2573), .Y(n4636) );
  XOR2X1 U1267 ( .A(n4392), .B(n2857), .Y(n4487) );
  NAND2X1 U1268 ( .A(n4391), .B(n2872), .Y(n4706) );
  XOR2X1 U1269 ( .A(n4391), .B(n4335), .Y(n4542) );
  OAI21X1 U1270 ( .A0(n4385), .A1(n4332), .B0(n4288), .Y(n4718) );
  OAI211X1 U1271 ( .A0(n4342), .A1(n4289), .B0(n4697), .C0(n4696), .Y(n4726)
         );
  NAND3X1 U1272 ( .A(n4342), .B(n4695), .C(n4388), .Y(n4696) );
  AOI2BB2X1 U1273 ( .B0(n4694), .B1(n2856), .A0N(n4385), .A1N(n2856), .Y(n4692) );
  NAND2X1 U1274 ( .A(n4385), .B(n4289), .Y(n4489) );
  NOR2X1 U1275 ( .A(n4490), .B(n4385), .Y(n4338) );
  XNOR2X1 U1276 ( .A(n4392), .B(n2858), .Y(n4490) );
  AND3X1 U1277 ( .A(n4484), .B(n4289), .C(n4329), .Y(n4367) );
  NOR2X1 U1278 ( .A(n4299), .B(n2852), .Y(n4484) );
  NOR2XL U1279 ( .A(n2843), .B(n2982), .Y(n4476) );
  NAND2X1 U1280 ( .A(n4385), .B(n4333), .Y(n4707) );
  AND2X2 U1281 ( .A(n4380), .B(n2864), .Y(n4528) );
  AND2X2 U1282 ( .A(n4392), .B(n4310), .Y(n4510) );
  NOR2XL U1283 ( .A(n3029), .B(n2982), .Y(n4493) );
  NOR2X1 U1284 ( .A(n4368), .B(n2862), .Y(n4492) );
  CLKINVX20 U1285 ( .A(n4388), .Y(n4385) );
  CLKINVX20 U1286 ( .A(n4387), .Y(n4386) );
  NAND2X1 U1287 ( .A(n4378), .B(n4320), .Y(n4656) );
  XOR2X1 U1288 ( .A(n4664), .B(n4663), .Y(\accum_lpf[7][9] ) );
  XOR2X1 U1289 ( .A(n4683), .B(n4682), .Y(\accum_hpf[14][3] ) );
  XOR2X1 U1290 ( .A(n4557), .B(n4556), .Y(\accum_lpf[1][3] ) );
  XOR2X1 U1291 ( .A(n4599), .B(n4545), .Y(\accum_hpf[8][10] ) );
  XNOR2X1 U1292 ( .A(n4392), .B(n2850), .Y(n4569) );
  MXI2X1 U1293 ( .A(n2697), .B(n4303), .S0(n4380), .Y(n4615) );
  XNOR2X1 U1294 ( .A(n4597), .B(n2851), .Y(\accum_lpf[14][9] ) );
  XNOR2X1 U1295 ( .A(n4585), .B(n4553), .Y(\accum_lpf[14][5] ) );
  NOR2X2 U1296 ( .A(n4372), .B(n4309), .Y(n4661) );
  NAND2BX2 U1297 ( .AN(n2989), .B(n4374), .Y(n4673) );
  NAND2X2 U1298 ( .A(n4376), .B(n4311), .Y(n4558) );
  OR2X1 U1299 ( .A(_data[1]), .B(n2860), .Y(n4290) );
  NOR2X1 U1300 ( .A(n3772), .B(n4301), .Y(n4589) );
  AO21X1 U1301 ( .A0(n4547), .A1(n4431), .B0(n4430), .Y(n3458) );
  OR2X1 U1302 ( .A(n2854), .B(n2853), .Y(n4299) );
endmodule

