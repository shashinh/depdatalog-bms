0.995::appOK_Correct.
0.005::appOK_Incorrect_Corrupt.
0.995::dataFile_Correct.
0.005::dataFile_Incorrect_Corrupt.
0.97::dskLocal_Greater_than_2_Mb.
0.03::dskLocal_Less_than_2_Mb.
0.95::prtSpool_Enabled.
0.05::prtSpool_Disabled.
0.9::prtOn_Yes.
0.1::prtOn_No.
0.98::prtPaper_Has_Paper.
0.02::prtPaper_No_Paper.
0.8::netPrint_No__Local_printer_.
0.2::netPrint_Yes__Network_printer_.
0.9::prtDriver_Yes.
0.1::prtDriver_No.
0.9999::prtThread_OK.
0.0001::prtThread_Corrupt_Buggy.
0.99::drvSet_Correct.
0.01::drvSet_Incorrect.
0.99::drvOK_Reinstalled.
0.01::drvOK_Corrupt.
0.99::prtSel_Yes.
0.01::prtSel_No.
0.97::prtPath_Correct.
0.03::prtPath_Incorrect.
0.98::ntwrkCnfg_Correct.
0.02::ntwrkCnfg_Incorrect.
0.7::pTROFFLINE_Online.
0.3::pTROFFLINE_Offline.
0.98::prtCbl_Connected.
0.02::prtCbl_Loose.
0.99::prtPort_Yes.
0.01::prtPort_No.
0.99::cblPrtHrdwrOK_Operational.
0.01::cblPrtHrdwrOK_Not_Operational.
0.15::dSApplctn_DOS.
0.85::dSApplctn_Windows.
0.8::prtMpTPth_Correct.
0.2::prtMpTPth_Incorrect.
0.95::prtMem_Greater_than_2_Mb.
0.05::prtMem_Less_than_2Mb.
0.94::prtTimeOut_Long_Enough.
0.06::prtTimeOut_Too_Short.
0.85::fllCrrptdBffr_Intact__not_Corrupt_.
0.15::fllCrrptdBffr_Full_or_Corrupt.
0.995::tnrSpply_Adequate.
0.005::tnrSpply_Low.
0.95::pgOrnttnOK_Correct.
0.05::pgOrnttnOK_Incorrect.
0.98::prntngArOK_Correct.
0.02::prntngArOK_Incorrect.
0.95::scrnFntNtPrntrFnt_Yes.
0.05::scrnFntNtPrntrFnt_No.
0.95::grphcsRltdDrvrSttngs_Correct.
0.05::grphcsRltdDrvrSttngs_Incorrect.
0.99::ePSGrphc_No____TIF___WMF___BMP_.
0.01::ePSGrphc_Yes____EPS_.
0.4::prtPScript_Yes.
0.6::prtPScript_No.
0.9::trTypFnts_Yes.
0.1::trTypFnts_No.
0.98::fntInstlltn_Verified.
0.02::fntInstlltn_Faulty.
0.9::prntrAccptsTrtyp_Yes.
0.1::prntrAccptsTrtyp_No.
0.99::prtQueue_Short.
0.01::prtQueue_Long.
0.9999::appData_Correct :- appOK_Correct,dataFile_Correct.
1.0::appData_Incorrect_or_corrupt :- appOK_Incorrect_Corrupt,dataFile_Correct.
0.99::eMFOK_Yes :- appData_Correct,dskLocal_Greater_than_2_Mb,prtThread_OK.
1.0::eMFOK_No :- appData_Correct,dskLocal_Less_than_2_Mb,prtThread_OK.
1.0::gDIIN_Yes :- appData_Correct,prtSpool_Disabled,eMFOK_No.
1.0::gDIIN_No :- appData_Incorrect_or_corrupt,prtSpool_Disabled,eMFOK_No.
0.99::gDIOUT_Yes :- prtDriver_Yes,gDIIN_Yes,drvSet_Correct,drvOK_Reinstalled.
0.9::gDIOUT_No :- prtDriver_No,gDIIN_Yes,drvSet_Correct,drvOK_Reinstalled.
0.99::prtDataOut_Yes :- gDIOUT_Yes,prtSel_Yes.
1.0::prtDataOut_No :- gDIOUT_No,prtSel_Yes.
0.99::netOK_Yes :- prtPath_Correct,ntwrkCnfg_Correct,pTROFFLINE_Online.
1.0::netOK_No :- prtPath_Incorrect,ntwrkCnfg_Correct,pTROFFLINE_Online.
0.999::lclOK_Yes :- prtCbl_Connected,prtPort_Yes,cblPrtHrdwrOK_Operational.
1.0::lclOK_No :- prtCbl_Loose,prtPort_Yes,cblPrtHrdwrOK_Operational.
0.99::dS_NTOK_Yes :- appData_Correct,prtPath_Correct,prtMpTPth_Correct,ntwrkCnfg_Correct,pTROFFLINE_Online.
1.0::dS_NTOK_No :- appData_Correct,prtPath_Incorrect,prtMpTPth_Correct,ntwrkCnfg_Correct,pTROFFLINE_Online.
1.0::dS_LCLOK_Yes :- appData_Correct,prtCbl_Connected,prtPort_Yes,cblPrtHrdwrOK_Operational.
1.0::dS_LCLOK_No :- appData_Correct,prtCbl_Loose,prtPort_Yes,cblPrtHrdwrOK_Operational.
1.0::pC2PRT_Yes :- netPrint_Yes__Network_printer_,prtDataOut_No,netOK_No,lclOK_No,dSApplctn_DOS,dS_NTOK_Yes,dS_LCLOK_No.
1.0::pC2PRT_No :- netPrint_Yes__Network_printer_,prtDataOut_No,netOK_No,lclOK_No,dSApplctn_Windows,dS_NTOK_No,dS_LCLOK_No.
0.99::prtData_Yes :- prtOn_Yes,prtPaper_Has_Paper,pC2PRT_Yes,prtMem_Greater_than_2_Mb,prtTimeOut_Long_Enough,fllCrrptdBffr_Intact__not_Corrupt_,tnrSpply_Adequate.
1.0::prtData_No :- prtOn_No,prtPaper_Has_Paper,pC2PRT_Yes,prtMem_Greater_than_2_Mb,prtTimeOut_Long_Enough,fllCrrptdBffr_Intact__not_Corrupt_,tnrSpply_Adequate.
1.0::problem1_Normal_Output :- prtData_Yes.
1.0::problem1_No_Output :- prtData_No.
1.0::appDtGnTm_Fast_Enough :- prtSpool_Enabled.
0.00999999::appDtGnTm_Too_Long :- prtSpool_Disabled.
1.0::prntPrcssTm_Fast_Enough :- prtSpool_Disabled.
0.00999999::prntPrcssTm_Too_Long :- prtSpool_Enabled.
0.99900001::deskPrntSpd_OK :- prtMem_Greater_than_2_Mb,appDtGnTm_Fast_Enough,prntPrcssTm_Fast_Enough.
0.99900001::deskPrntSpd_Too_Slow :- prtMem_Greater_than_2_Mb,appDtGnTm_Too_Long,prntPrcssTm_Fast_Enough.
0.99::cmpltPgPrntd_Yes :- prtMem_Greater_than_2_Mb,pgOrnttnOK_Correct,prntngArOK_Correct.
0.99000001::cmpltPgPrntd_No :- prtMem_Greater_than_2_Mb,pgOrnttnOK_Incorrect,prntngArOK_Correct.
0.999::nnPSGrphc_Yes :- prtMem_Greater_than_2_Mb,grphcsRltdDrvrSttngs_Correct,ePSGrphc_No____TIF___WMF___BMP_.
1.0::nnPSGrphc_No :- prtMem_Greater_than_2_Mb,grphcsRltdDrvrSttngs_Correct,ePSGrphc_Yes____EPS_.
1.0::pSGRAPHIC_Yes :- prtMem_Greater_than_2_Mb,grphcsRltdDrvrSttngs_Correct,ePSGrphc_Yes____EPS_.
0.9::pSGRAPHIC_No :- prtMem_Greater_than_2_Mb,grphcsRltdDrvrSttngs_Incorrect,ePSGrphc_No____TIF___WMF___BMP_.
1.0::problem4_No :- nnPSGrphc_No,prtPScript_No,pSGRAPHIC_No.
1.0::problem4_Yes :- nnPSGrphc_No,prtPScript_Yes,pSGRAPHIC_Yes.
0.99000001::tTOK_Yes :- prtMem_Greater_than_2_Mb,fntInstlltn_Verified,prntrAccptsTrtyp_Yes.
1.0::tTOK_No :- prtMem_Greater_than_2_Mb,fntInstlltn_Verified,prntrAccptsTrtyp_No.
0.99000001::nnTTOK_Yes :- prtMem_Greater_than_2_Mb,scrnFntNtPrntrFnt_Yes,fntInstlltn_Verified.
0.9::nnTTOK_No :- prtMem_Greater_than_2_Mb,scrnFntNtPrntrFnt_No,fntInstlltn_Verified.
1.0::problem5_No :- trTypFnts_No,tTOK_No,nnTTOK_No.
1.0::problem5_Yes :- trTypFnts_No,tTOK_No,nnTTOK_Yes.
1.0::lclGrbld_Yes :- appData_Correct,prtDriver_Yes,prtMem_Greater_than_2_Mb,cblPrtHrdwrOK_Operational.
0.9::lclGrbld_No :- appData_Correct,prtDriver_Yes,prtMem_Greater_than_2_Mb,cblPrtHrdwrOK_Not_Operational.
1.0::ntGrbld_Yes :- appData_Correct,prtDriver_Yes,prtMem_Greater_than_2_Mb,ntwrkCnfg_Correct.
0.8::ntGrbld_No :- appData_Correct,prtDriver_Yes,prtMem_Less_than_2Mb,ntwrkCnfg_Correct.
1.0::grbldOtpt_No :- netPrint_Yes__Network_printer_,lclGrbld_No,ntGrbld_Yes.
1.0::grbldOtpt_Yes :- netPrint_Yes__Network_printer_,lclGrbld_No,ntGrbld_No.
0.99::hrglssDrtnAftrPrnt_Fast_Enough :- appDtGnTm_Fast_Enough.
0.9::hrglssDrtnAftrPrnt_Too_Long :- appDtGnTm_Too_Long.
1.0::rEPEAT_Yes__Always_the_Same_ :- cblPrtHrdwrOK_Operational,ntwrkCnfg_Correct.
0.5::rEPEAT_No__Different_Each_Time_ :- cblPrtHrdwrOK_Not_Operational,ntwrkCnfg_Incorrect.
1.0::avlblVrtlMmry_Adequate____1Mb_ :- prtPScript_No.
0.02::avlblVrtlMmry_Inadequate____1_Mb_ :- prtPScript_Yes.
1.0::pSERRMEM_No_Error :- prtPScript_No,avlblVrtlMmry_Inadequate____1_Mb_.
0.95::pSERRMEM_Low_Memory :- prtPScript_Yes,avlblVrtlMmry_Inadequate____1_Mb_.
1.0::tstpsTxt_x_1_Mb_Available_VM :- prtPScript_No,avlblVrtlMmry_Inadequate____1_Mb_.
0.99900001::tstpsTxt_x_1_Mb_Available_VM2 :- prtPScript_Yes,avlblVrtlMmry_Inadequate____1_Mb_.
1.0::grbldPS_No :- grbldOtpt_No,avlblVrtlMmry_Adequate____1Mb_.
1.0::grbldPS_Yes :- grbldOtpt_Yes,avlblVrtlMmry_Adequate____1Mb_.
1.0::incmpltPS_Yes :- cmpltPgPrntd_Yes,avlblVrtlMmry_Adequate____1Mb_.
1.0::incmpltPS_No :- cmpltPgPrntd_No,avlblVrtlMmry_Adequate____1Mb_.
0.8::prtFile_Yes :- prtDataOut_Yes.
0.8::prtFile_No :- prtDataOut_No.
0.9999::prtIcon_Normal :- ntwrkCnfg_Correct,pTROFFLINE_Online.
0.75::prtIcon_Grayed_Out :- ntwrkCnfg_Incorrect,pTROFFLINE_Online.
1.0::problem6_No :- grbldOtpt_Yes,prtPScript_Yes,grbldPS_No.
1.0::problem6_Yes :- grbldOtpt_Yes,prtPScript_No,grbldPS_Yes.
1.0::problem3_No :- cmpltPgPrntd_No,prtPScript_No,incmpltPS_No.
1.0::problem3_Yes :- cmpltPgPrntd_No,prtPScript_Yes,incmpltPS_Yes.
0.99900001::ntSpd_OK :- deskPrntSpd_OK,ntwrkCnfg_Correct,prtQueue_Short.
1.0::ntSpd_Slow :- deskPrntSpd_Too_Slow,ntwrkCnfg_Correct,prtQueue_Short.
1.0::problem2_OK :- netPrint_Yes__Network_printer_,deskPrntSpd_Too_Slow,ntSpd_OK.
1.0::problem2_Too_Long :- netPrint_Yes__Network_printer_,deskPrntSpd_Too_Slow,ntSpd_Slow.
0.99900001::prtStatPaper_No_Error :- prtPaper_Has_Paper.
0.99900001::prtStatPaper_Jam__Out__Bin_Full :- prtPaper_No_Paper.
0.99900001::prtStatToner_No_Error :- tnrSpply_Adequate.
0.99900001::prtStatToner_Low__None :- tnrSpply_Low.
0.99900001::prtStatMem_No_Error :- prtMem_Greater_than_2_Mb.
0.8::prtStatMem_Out_of_Memory :- prtMem_Less_than_2Mb.
0.99000001::prtStatOff_No_Error :- prtOn_Yes.
0.99000001::prtStatOff_OFFLINE__OFF :- prtOn_No.
0::appOK_Correct :- appOK_Incorrect_Corrupt.
0::dataFile_Correct :- dataFile_Incorrect_Corrupt.
0::dskLocal_Greater_than_2_Mb :- dskLocal_Less_than_2_Mb.
0::prtSpool_Enabled :- prtSpool_Disabled.
0::prtOn_Yes :- prtOn_No.
0::prtPaper_Has_Paper :- prtPaper_No_Paper.
0::netPrint_No__Local_printer_ :- netPrint_Yes__Network_printer_.
0::prtDriver_Yes :- prtDriver_No.
0::prtThread_OK :- prtThread_Corrupt_Buggy.
0::drvSet_Correct :- drvSet_Incorrect.
0::drvOK_Reinstalled :- drvOK_Corrupt.
0::prtSel_Yes :- prtSel_No.
0::prtPath_Correct :- prtPath_Incorrect.
0::ntwrkCnfg_Correct :- ntwrkCnfg_Incorrect.
0::pTROFFLINE_Online :- pTROFFLINE_Offline.
0::prtCbl_Connected :- prtCbl_Loose.
0::prtPort_Yes :- prtPort_No.
0::cblPrtHrdwrOK_Operational :- cblPrtHrdwrOK_Not_Operational.
0::dSApplctn_DOS :- dSApplctn_Windows.
0::prtMpTPth_Correct :- prtMpTPth_Incorrect.
0::prtMem_Greater_than_2_Mb :- prtMem_Less_than_2Mb.
0::prtTimeOut_Long_Enough :- prtTimeOut_Too_Short.
0::fllCrrptdBffr_Intact__not_Corrupt_ :- fllCrrptdBffr_Full_or_Corrupt.
0::tnrSpply_Adequate :- tnrSpply_Low.
0::pgOrnttnOK_Correct :- pgOrnttnOK_Incorrect.
0::prntngArOK_Correct :- prntngArOK_Incorrect.
0::scrnFntNtPrntrFnt_Yes :- scrnFntNtPrntrFnt_No.
0::grphcsRltdDrvrSttngs_Correct :- grphcsRltdDrvrSttngs_Incorrect.
0::ePSGrphc_No____TIF___WMF___BMP_ :- ePSGrphc_Yes____EPS_.
0::prtPScript_Yes :- prtPScript_No.
0::trTypFnts_Yes :- trTypFnts_No.
0::fntInstlltn_Verified :- fntInstlltn_Faulty.
0::prntrAccptsTrtyp_Yes :- prntrAccptsTrtyp_No.
0::prtQueue_Short :- prtQueue_Long.
query(appData_Correct).
query(appData_Incorrect_or_corrupt).
query(eMFOK_Yes).
query(eMFOK_No).
query(gDIIN_Yes).
query(gDIIN_No).
query(gDIOUT_Yes).
query(gDIOUT_No).
query(prtDataOut_Yes).
query(prtDataOut_No).
query(netOK_Yes).
query(netOK_No).
query(lclOK_Yes).
query(lclOK_No).
query(dS_NTOK_Yes).
query(dS_NTOK_No).
query(dS_LCLOK_Yes).
query(dS_LCLOK_No).
query(pC2PRT_Yes).
query(pC2PRT_No).
query(prtData_Yes).
query(prtData_No).
query(problem1_Normal_Output).
query(problem1_No_Output).
query(appDtGnTm_Fast_Enough).
query(appDtGnTm_Too_Long).
query(prntPrcssTm_Fast_Enough).
query(prntPrcssTm_Too_Long).
query(deskPrntSpd_OK).
query(deskPrntSpd_Too_Slow).
query(cmpltPgPrntd_Yes).
query(cmpltPgPrntd_No).
query(nnPSGrphc_Yes).
query(nnPSGrphc_No).
query(pSGRAPHIC_Yes).
query(pSGRAPHIC_No).
query(problem4_No).
query(problem4_Yes).
query(tTOK_Yes).
query(tTOK_No).
query(nnTTOK_Yes).
query(nnTTOK_No).
query(problem5_No).
query(problem5_Yes).
query(lclGrbld_Yes).
query(lclGrbld_No).
query(ntGrbld_Yes).
query(ntGrbld_No).
query(grbldOtpt_No).
query(grbldOtpt_Yes).
query(hrglssDrtnAftrPrnt_Fast_Enough).
query(hrglssDrtnAftrPrnt_Too_Long).
query(rEPEAT_Yes__Always_the_Same_).
query(rEPEAT_No__Different_Each_Time_).
query(avlblVrtlMmry_Adequate____1Mb_).
query(avlblVrtlMmry_Inadequate____1_Mb_).
query(pSERRMEM_No_Error).
query(pSERRMEM_Low_Memory).
query(tstpsTxt_x_1_Mb_Available_VM).
query(tstpsTxt_x_1_Mb_Available_VM2).
query(grbldPS_No).
query(grbldPS_Yes).
query(incmpltPS_Yes).
query(incmpltPS_No).
query(prtFile_Yes).
query(prtFile_No).
query(prtIcon_Normal).
query(prtIcon_Grayed_Out).
query(problem6_No).
query(problem6_Yes).
query(problem3_No).
query(problem3_Yes).
query(ntSpd_OK).
query(ntSpd_Slow).
query(problem2_OK).
query(problem2_Too_Long).
query(prtStatPaper_No_Error).
query(prtStatPaper_Jam__Out__Bin_Full).
query(prtStatToner_No_Error).
query(prtStatToner_Low__None).
query(prtStatMem_No_Error).
query(prtStatMem_Out_of_Memory).
query(prtStatOff_No_Error).
query(prtStatOff_OFFLINE__OFF).