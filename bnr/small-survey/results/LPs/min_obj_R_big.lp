\ Model Baseline
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  obj_R_big
Subject To
 sumToOne_V0: V0_00000 + V0_00001 + V0_00010 + V0_00011 + V0_00100
   + V0_00101 + V0_00110 + V0_00111 + V0_01000 + V0_01001 + V0_01010
   + V0_01011 + V0_01100 + V0_01101 + V0_01110 + V0_01111 + V0_10000
   + V0_10001 + V0_10010 + V0_10011 + V0_10100 + V0_10101 + V0_10110
   + V0_10111 + V0_11000 + V0_11001 + V0_11010 + V0_11011 + V0_11100
   + V0_11101 + V0_11110 + V0_11111 = 1
 c_A_young: V0_10000 + V0_10001 + V0_10010 + V0_10011 + V0_10100 + V0_10101
   + V0_10110 + V0_10111 + V0_11000 + V0_11001 + V0_11010 + V0_11011
   + V0_11100 + V0_11101 + V0_11110 + V0_11111 = 0.3
 c_S_F: V0_01000 + V0_01001 + V0_01010 + V0_01011 + V0_01100 + V0_01101
   + V0_01110 + V0_01111 + V0_11000 + V0_11001 + V0_11010 + V0_11011
   + V0_11100 + V0_11101 + V0_11110 + V0_11111 = 0.4
 c_S_M: V0_00100 + V0_00101 + V0_00110 + V0_00111 + V0_01100 + V0_01101
   + V0_01110 + V0_01111 + V0_10100 + V0_10101 + V0_10110 + V0_10111
   + V0_11100 + V0_11101 + V0_11110 + V0_11111 = 0.6
 c_A_adult: V0_00010 + V0_00011 + V0_00110 + V0_00111 + V0_01010 + V0_01011
   + V0_01110 + V0_01111 + V0_10010 + V0_10011 + V0_10110 + V0_10111
   + V0_11010 + V0_11011 + V0_11110 + V0_11111 = 0.5
 c_A_old: V0_00001 + V0_00011 + V0_00101 + V0_00111 + V0_01001 + V0_01011
   + V0_01101 + V0_01111 + V0_10001 + V0_10011 + V0_10101 + V0_10111
   + V0_11001 + V0_11011 + V0_11101 + V0_11111 = 0.2
 c_aux0: - V0_11000 + aux0 = 0
 c_aux1: - V0_11001 + aux1 = 0
 c_aux2: - V0_11010 + aux2 = 0
 c_aux3: - V0_11011 + aux3 = 0
 c_aux4: - V0_11100 + aux4 = 0
 c_aux5: - V0_11101 + aux5 = 0
 c_aux6: - V0_11110 + aux6 = 0
 c_aux7: - V0_11111 + aux7 = 0
 c_aux8: - 0.2 V0_01000 + aux8 = 0
 c_aux9: - 0.2 V0_01001 + aux9 = 0
 c_aux10: - 0.2 V0_01010 + aux10 = 0
 c_aux11: - 0.2 V0_01011 + aux11 = 0
 c_aux12: - 0.2 V0_01100 + aux12 = 0
 c_aux13: - 0.2 V0_01101 + aux13 = 0
 c_aux14: - 0.2 V0_01110 + aux14 = 0
 c_aux15: - 0.2 V0_01111 + aux15 = 0
 c_aux16: - 0.2 V0_11000 + aux16 = 0
 c_aux17: - 0.2 V0_11001 + aux17 = 0
 c_aux18: - 0.2 V0_11010 + aux18 = 0
 c_aux19: - 0.2 V0_11011 + aux19 = 0
 c_aux20: - 0.2 V0_11100 + aux20 = 0
 c_aux21: - 0.2 V0_11101 + aux21 = 0
 c_aux22: - 0.2 V0_11110 + aux22 = 0
 c_aux23: - 0.2 V0_11111 + aux23 = 0
 R30: - aux0 - aux1 - aux2 - aux3 - aux4 - aux5 - aux6 - aux7 + C56 = 0
 R31: - aux8 - aux9 - aux10 - aux11 - aux12 - aux13 - aux14 - aux15 - aux16
   - aux17 - aux18 - aux19 - aux20 - aux21 - aux22 - aux23 + C56 = 0
 c_aux24: - V0_10010 + aux24 = 0
 c_aux25: - V0_10011 + aux25 = 0
 c_aux26: - V0_10110 + aux26 = 0
 c_aux27: - V0_10111 + aux27 = 0
 c_aux28: - V0_11010 + aux28 = 0
 c_aux29: - V0_11011 + aux29 = 0
 c_aux30: - V0_11110 + aux30 = 0
 c_aux31: - V0_11111 + aux31 = 0
 R40: - aux24 - aux25 - aux26 - aux27 - aux28 - aux29 - aux30 - aux31 + C65
   = 0
 R41: C65 = 0
 c_aux32: - V0_10001 + aux32 = 0
 c_aux33: - V0_10011 + aux33 = 0
 c_aux34: - V0_10101 + aux34 = 0
 c_aux35: - V0_10111 + aux35 = 0
 c_aux36: - V0_11001 + aux36 = 0
 c_aux37: - V0_11011 + aux37 = 0
 c_aux38: - V0_11101 + aux38 = 0
 c_aux39: - V0_11111 + aux39 = 0
 R50: - aux32 - aux33 - aux34 - aux35 - aux36 - aux37 - aux38 - aux39 + C74
   = 0
 R51: C74 = 0
 c_aux40: - V0_01100 + aux40 = 0
 c_aux41: - V0_01101 + aux41 = 0
 c_aux42: - V0_01110 + aux42 = 0
 c_aux43: - V0_01111 + aux43 = 0
 c_aux44: - V0_11100 + aux44 = 0
 c_aux45: - V0_11101 + aux45 = 0
 c_aux46: - V0_11110 + aux46 = 0
 c_aux47: - V0_11111 + aux47 = 0
 R60: - aux40 - aux41 - aux42 - aux43 - aux44 - aux45 - aux46 - aux47 + C83
   = 0
 R61: C83 = 0
 c_aux48: - 0.9 V0_01001 + aux48 = 0
 c_aux49: - 0.9 V0_01011 + aux49 = 0
 c_aux50: - 0.9 V0_01101 + aux50 = 0
 c_aux51: - 0.9 V0_01111 + aux51 = 0
 c_aux52: - 0.9 V0_11001 + aux52 = 0
 c_aux53: - 0.9 V0_11011 + aux53 = 0
 c_aux54: - 0.9 V0_11101 + aux54 = 0
 c_aux55: - 0.9 V0_11111 + aux55 = 0
 c_obj_E_high: - aux48 - aux49 - aux50 - aux51 - aux52 - aux53 - aux54
   - aux55 + obj_E_high = 0
 c_aux56: - 0.36 V0_11000 + aux56 = 0
 c_aux57: - 0.36 V0_11001 + aux57 = 0
 c_aux58: - 0.36 V0_11010 + aux58 = 0
 c_aux59: - 0.36 V0_11011 + aux59 = 0
 c_aux60: - 0.36 V0_11100 + aux60 = 0
 c_aux61: - 0.36 V0_11101 + aux61 = 0
 c_aux62: - 0.36 V0_11110 + aux62 = 0
 c_aux63: - 0.36 V0_11111 + aux63 = 0
 c_obj_E_uni: - aux56 - aux57 - aux58 - aux59 - aux60 - aux61 - aux62
   - aux63 + obj_E_uni = 0
 c_aux64: - 0.864 V0_01001 + aux64 = 0
 c_aux65: - 0.864 V0_01011 + aux65 = 0
 c_aux66: - 0.864 V0_01101 + aux66 = 0
 c_aux67: - 0.864 V0_01111 + aux67 = 0
 c_aux68: - 0.864 V0_11001 + aux68 = 0
 c_aux69: - 0.864 V0_11011 + aux69 = 0
 c_aux70: - 0.864 V0_11101 + aux70 = 0
 c_aux71: - 0.864 V0_11111 + aux71 = 0
 c_obj_O_emp: - aux64 - aux65 - aux66 - aux67 - aux68 - aux69 - aux70
   - aux71 + obj_O_emp = 0
 c_aux72: - 0.0288 V0_11000 + aux72 = 0
 c_aux73: - 0.0288 V0_11001 + aux73 = 0
 c_aux74: - 0.0288 V0_11010 + aux74 = 0
 c_aux75: - 0.0288 V0_11011 + aux75 = 0
 c_aux76: - 0.0288 V0_11100 + aux76 = 0
 c_aux77: - 0.0288 V0_11101 + aux77 = 0
 c_aux78: - 0.0288 V0_11110 + aux78 = 0
 c_aux79: - 0.0288 V0_11111 + aux79 = 0
 c_obj_O_self: - aux72 - aux73 - aux74 - aux75 - aux76 - aux77 - aux78
   - aux79 + obj_O_self = 0
 c_aux80: - 0.225 V0_01001 + aux80 = 0
 c_aux81: - 0.225 V0_01011 + aux81 = 0
 c_aux82: - 0.225 V0_01101 + aux82 = 0
 c_aux83: - 0.225 V0_01111 + aux83 = 0
 c_aux84: - 0.225 V0_11001 + aux84 = 0
 c_aux85: - 0.225 V0_11011 + aux85 = 0
 c_aux86: - 0.225 V0_11101 + aux86 = 0
 c_aux87: - 0.225 V0_11111 + aux87 = 0
 c_obj_R_small: - aux80 - aux81 - aux82 - aux83 - aux84 - aux85 - aux86
   - aux87 + obj_R_small = 0
 c_aux88: - 0.288 V0_11000 + aux88 = 0
 c_aux89: - 0.288 V0_11001 + aux89 = 0
 c_aux90: - 0.288 V0_11010 + aux90 = 0
 c_aux91: - 0.288 V0_11011 + aux91 = 0
 c_aux92: - 0.288 V0_11100 + aux92 = 0
 c_aux93: - 0.288 V0_11101 + aux93 = 0
 c_aux94: - 0.288 V0_11110 + aux94 = 0
 c_aux95: - 0.288 V0_11111 + aux95 = 0
 c_obj_R_big: - aux88 - aux89 - aux90 - aux91 - aux92 - aux93 - aux94
   - aux95 + obj_R_big = 0
 c_aux96: - 0.00580608 V0_11000 + aux96 = 0
 c_aux97: - 0.00580608 V0_11001 + aux97 = 0
 c_aux98: - 0.00580608 V0_11010 + aux98 = 0
 c_aux99: - 0.00580608 V0_11011 + aux99 = 0
 c_aux100: - 0.00580608 V0_11100 + aux100 = 0
 c_aux101: - 0.00580608 V0_11101 + aux101 = 0
 c_aux102: - 0.00580608 V0_11110 + aux102 = 0
 c_aux103: - 0.00580608 V0_11111 + aux103 = 0
 c_obj_T_car: - aux96 - aux97 - aux98 - aux99 - aux100 - aux101 - aux102
   - aux103 + obj_T_car = 0
 c_aux104: - 0.081648 V0_01001 + aux104 = 0
 c_aux105: - 0.081648 V0_01011 + aux105 = 0
 c_aux106: - 0.081648 V0_01101 + aux106 = 0
 c_aux107: - 0.081648 V0_01111 + aux107 = 0
 c_aux108: - 0.081648 V0_11001 + aux108 = 0
 c_aux109: - 0.081648 V0_11011 + aux109 = 0
 c_aux110: - 0.081648 V0_11101 + aux110 = 0
 c_aux111: - 0.081648 V0_11111 + aux111 = 0
 c_obj_T_train: - aux104 - aux105 - aux106 - aux107 - aux108 - aux109
   - aux110 - aux111 + obj_T_train = 0
 c_aux112: - 0.04478976 V0_11001 + aux112 = 0
 c_aux113: - 0.04478976 V0_11011 + aux113 = 0
 c_aux114: - 0.04478976 V0_11101 + aux114 = 0
 c_aux115: - 0.04478976 V0_11111 + aux115 = 0
 c_obj_T_other: - aux112 - aux113 - aux114 - aux115 + obj_T_other = 0
Bounds
 V0_00000 <= 1
 V0_00001 <= 1
 V0_00010 <= 1
 V0_00011 <= 1
 V0_00100 <= 1
 V0_00101 <= 1
 V0_00110 <= 1
 V0_00111 <= 1
 V0_01000 <= 1
 V0_01001 <= 1
 V0_01010 <= 1
 V0_01011 <= 1
 V0_01100 <= 1
 V0_01101 <= 1
 V0_01110 <= 1
 V0_01111 <= 1
 V0_10000 <= 1
 V0_10001 <= 1
 V0_10010 <= 1
 V0_10011 <= 1
 V0_10100 <= 1
 V0_10101 <= 1
 V0_10110 <= 1
 V0_10111 <= 1
 V0_11000 <= 1
 V0_11001 <= 1
 V0_11010 <= 1
 V0_11011 <= 1
 V0_11100 <= 1
 V0_11101 <= 1
 V0_11110 <= 1
 V0_11111 <= 1
 aux0 <= 1
 aux1 <= 1
 aux2 <= 1
 aux3 <= 1
 aux4 <= 1
 aux5 <= 1
 aux6 <= 1
 aux7 <= 1
 aux8 <= 1
 aux9 <= 1
 aux10 <= 1
 aux11 <= 1
 aux12 <= 1
 aux13 <= 1
 aux14 <= 1
 aux15 <= 1
 aux16 <= 1
 aux17 <= 1
 aux18 <= 1
 aux19 <= 1
 aux20 <= 1
 aux21 <= 1
 aux22 <= 1
 aux23 <= 1
 C56 <= 1
 aux24 <= 1
 aux25 <= 1
 aux26 <= 1
 aux27 <= 1
 aux28 <= 1
 aux29 <= 1
 aux30 <= 1
 aux31 <= 1
 C65 <= 1
 aux32 <= 1
 aux33 <= 1
 aux34 <= 1
 aux35 <= 1
 aux36 <= 1
 aux37 <= 1
 aux38 <= 1
 aux39 <= 1
 C74 <= 1
 aux40 <= 1
 aux41 <= 1
 aux42 <= 1
 aux43 <= 1
 aux44 <= 1
 aux45 <= 1
 aux46 <= 1
 aux47 <= 1
 C83 <= 1
 aux48 <= 1
 aux49 <= 1
 aux50 <= 1
 aux51 <= 1
 aux52 <= 1
 aux53 <= 1
 aux54 <= 1
 aux55 <= 1
 obj_E_high <= 1
 aux56 <= 1
 aux57 <= 1
 aux58 <= 1
 aux59 <= 1
 aux60 <= 1
 aux61 <= 1
 aux62 <= 1
 aux63 <= 1
 obj_E_uni <= 1
 aux64 <= 1
 aux65 <= 1
 aux66 <= 1
 aux67 <= 1
 aux68 <= 1
 aux69 <= 1
 aux70 <= 1
 aux71 <= 1
 obj_O_emp <= 1
 aux72 <= 1
 aux73 <= 1
 aux74 <= 1
 aux75 <= 1
 aux76 <= 1
 aux77 <= 1
 aux78 <= 1
 aux79 <= 1
 obj_O_self <= 1
 aux80 <= 1
 aux81 <= 1
 aux82 <= 1
 aux83 <= 1
 aux84 <= 1
 aux85 <= 1
 aux86 <= 1
 aux87 <= 1
 obj_R_small <= 1
 aux88 <= 1
 aux89 <= 1
 aux90 <= 1
 aux91 <= 1
 aux92 <= 1
 aux93 <= 1
 aux94 <= 1
 aux95 <= 1
 obj_R_big <= 1
 aux96 <= 1
 aux97 <= 1
 aux98 <= 1
 aux99 <= 1
 aux100 <= 1
 aux101 <= 1
 aux102 <= 1
 aux103 <= 1
 obj_T_car <= 1
 aux104 <= 1
 aux105 <= 1
 aux106 <= 1
 aux107 <= 1
 aux108 <= 1
 aux109 <= 1
 aux110 <= 1
 aux111 <= 1
 obj_T_train <= 1
 aux112 <= 1
 aux113 <= 1
 aux114 <= 1
 aux115 <= 1
 obj_T_other <= 1
End
