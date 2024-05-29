\ Model Baseline
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  obj_MaryCalls_False
Subject To
 sumToOne_V0: V0_0000 + V0_0001 + V0_0010 + V0_0011 + V0_0100 + V0_0101
   + V0_0110 + V0_0111 + V0_1000 + V0_1001 + V0_1010 + V0_1011 + V0_1100
   + V0_1101 + V0_1110 + V0_1111 = 1
 c_Burglary_True: V0_1000 + V0_1001 + V0_1010 + V0_1011 + V0_1100 + V0_1101
   + V0_1110 + V0_1111 = 0.01
 c_Earthquake_False: V0_0100 + V0_0101 + V0_0110 + V0_0111 + V0_1100
   + V0_1101 + V0_1110 + V0_1111 = 0.98
 c_Earthquake_True: V0_0010 + V0_0011 + V0_0110 + V0_0111 + V0_1010
   + V0_1011 + V0_1110 + V0_1111 = 0.02
 c_Burglary_False: V0_0001 + V0_0011 + V0_0101 + V0_0111 + V0_1001
   + V0_1011 + V0_1101 + V0_1111 = 0.99
 c_aux0: - V0_1100 + aux0 = 0
 c_aux1: - V0_1101 + aux1 = 0
 c_aux2: - V0_1110 + aux2 = 0
 c_aux3: - V0_1111 + aux3 = 0
 c_aux4: - 0.009 V0_0100 + aux4 = 0
 c_aux5: - 0.009 V0_0101 + aux5 = 0
 c_aux6: - 0.009 V0_0110 + aux6 = 0
 c_aux7: - 0.009 V0_0111 + aux7 = 0
 c_aux8: - 0.009 V0_1100 + aux8 = 0
 c_aux9: - 0.009 V0_1101 + aux9 = 0
 c_aux10: - 0.009 V0_1110 + aux10 = 0
 c_aux11: - 0.009 V0_1111 + aux11 = 0
 R17: - aux0 - aux1 - aux2 - aux3 + C28 = 0
 R18: - aux4 - aux5 - aux6 - aux7 - aux8 - aux9 - aux10 - aux11 + C28 = 0
 c_aux12: - V0_1001 + aux12 = 0
 c_aux13: - V0_1011 + aux13 = 0
 c_aux14: - V0_1101 + aux14 = 0
 c_aux15: - V0_1111 + aux15 = 0
 R23: - aux12 - aux13 - aux14 - aux15 + C33 = 0
 R24: C33 = 0
 c_aux16: - V0_0110 + aux16 = 0
 c_aux17: - V0_0111 + aux17 = 0
 c_aux18: - V0_1110 + aux18 = 0
 c_aux19: - V0_1111 + aux19 = 0
 R29: - aux16 - aux17 - aux18 - aux19 + C38 = 0
 R30: C38 = 0
 c_aux20: - 0.95 V0_1010 + aux20 = 0
 c_aux21: - 0.95 V0_1011 + aux21 = 0
 c_aux22: - 0.95 V0_1110 + aux22 = 0
 c_aux23: - 0.95 V0_1111 + aux23 = 0
 c_obj_Alarm_True: - aux20 - aux21 - aux22 - aux23 + obj_Alarm_True = 0
 c_aux24: - 0.999 V0_0101 + aux24 = 0
 c_aux25: - 0.999 V0_0111 + aux25 = 0
 c_aux26: - 0.999 V0_1101 + aux26 = 0
 c_aux27: - 0.999 V0_1111 + aux27 = 0
 c_obj_Alarm_False: - aux24 - aux25 - aux26 - aux27 + obj_Alarm_False = 0
 c_aux28: - 0.855 V0_1010 + aux28 = 0
 c_aux29: - 0.855 V0_1011 + aux29 = 0
 c_aux30: - 0.855 V0_1110 + aux30 = 0
 c_aux31: - 0.855 V0_1111 + aux31 = 0
 c_obj_JohnCalls_True: - aux28 - aux29 - aux30 - aux31 + obj_JohnCalls_True
   = 0
 c_aux32: - 0.94905 V0_0101 + aux32 = 0
 c_aux33: - 0.94905 V0_0111 + aux33 = 0
 c_aux34: - 0.94905 V0_1101 + aux34 = 0
 c_aux35: - 0.94905 V0_1111 + aux35 = 0
 c_obj_JohnCalls_False: - aux32 - aux33 - aux34 - aux35
   + obj_JohnCalls_False = 0
 c_aux36: - 0.665 V0_1010 + aux36 = 0
 c_aux37: - 0.665 V0_1011 + aux37 = 0
 c_aux38: - 0.665 V0_1110 + aux38 = 0
 c_aux39: - 0.665 V0_1111 + aux39 = 0
 c_obj_MaryCalls_True: - aux36 - aux37 - aux38 - aux39 + obj_MaryCalls_True
   = 0
 c_aux40: - 0.98901 V0_0101 + aux40 = 0
 c_aux41: - 0.98901 V0_0111 + aux41 = 0
 c_aux42: - 0.98901 V0_1101 + aux42 = 0
 c_aux43: - 0.98901 V0_1111 + aux43 = 0
 c_obj_MaryCalls_False: - aux40 - aux41 - aux42 - aux43
   + obj_MaryCalls_False = 0
Bounds
 V0_0000 <= 1
 V0_0001 <= 1
 V0_0010 <= 1
 V0_0011 <= 1
 V0_0100 <= 1
 V0_0101 <= 1
 V0_0110 <= 1
 V0_0111 <= 1
 V0_1000 <= 1
 V0_1001 <= 1
 V0_1010 <= 1
 V0_1011 <= 1
 V0_1100 <= 1
 V0_1101 <= 1
 V0_1110 <= 1
 V0_1111 <= 1
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
 C28 <= 1
 aux12 <= 1
 aux13 <= 1
 aux14 <= 1
 aux15 <= 1
 C33 <= 1
 aux16 <= 1
 aux17 <= 1
 aux18 <= 1
 aux19 <= 1
 C38 <= 1
 aux20 <= 1
 aux21 <= 1
 aux22 <= 1
 aux23 <= 1
 obj_Alarm_True <= 1
 aux24 <= 1
 aux25 <= 1
 aux26 <= 1
 aux27 <= 1
 obj_Alarm_False <= 1
 aux28 <= 1
 aux29 <= 1
 aux30 <= 1
 aux31 <= 1
 obj_JohnCalls_True <= 1
 aux32 <= 1
 aux33 <= 1
 aux34 <= 1
 aux35 <= 1
 obj_JohnCalls_False <= 1
 aux36 <= 1
 aux37 <= 1
 aux38 <= 1
 aux39 <= 1
 obj_MaryCalls_True <= 1
 aux40 <= 1
 aux41 <= 1
 aux42 <= 1
 aux43 <= 1
 obj_MaryCalls_False <= 1
End
