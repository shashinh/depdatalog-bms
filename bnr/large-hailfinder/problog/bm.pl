0.25::n0_7muVerMo_StrongUp.
0.25::n0_7muVerMo_WeakUp.
0.25::n0_7muVerMo_Neutral.
0.25::n0_7muVerMo_Down.
0.15::subjVertMo_StronUp.
0.15::subjVertMo_WeakUp.
0.5::subjVertMo_Neutral.
0.2::subjVertMo_Down.
0.15::qGVertMotion_StrongUp.
0.15::qGVertMotion_WeakUp.
0.5::qGVertMotion_Neutral.
0.2::qGVertMotion_Down.
0.15::satContMoist_VeryWet.
0.2::satContMoist_Wet.
0.4::satContMoist_Neutral.
0.25::satContMoist_Dry.
0.15::raoContMoist_VeryWet.
0.2::raoContMoist_Wet.
0.4::raoContMoist_Neutral.
0.25::raoContMoist_Dry.
0.1::vISCloudCov_Cloudy.
0.5::vISCloudCov_PC.
0.4::vISCloudCov_Clear.
0.15::iRCloudCover_Cloudy.
0.45::iRCloudCover_PC.
0.4::iRCloudCover_Clear.
0.333333::aMInstabMt_None.
0.333333::aMInstabMt_Weak.
0.333334::aMInstabMt_Strong.
0.3::wndHodograph_DCVZFavor.
0.25::wndHodograph_StrongWest.
0.25::wndHodograph_Westerly.
0.2::wndHodograph_Other.
0.5::morningBound_None.
0.35::morningBound_Weak.
0.15::morningBound_Strong.
0.12::loLevMoistAd_StrongPos.
0.28::loLevMoistAd_WeakPos.
0.3::loLevMoistAd_Neutral.
0.3::loLevMoistAd_Negative.
0.254098::date_May15_Jun14.
0.131148::date_Jun15_Jul1.
0.106557::date_Jul2_Jul15.
0.213115::date_Jul16_Aug10.
0.07377::date_Aug11_Aug20.
0.221312::date_Aug20_Sep15.
0.15::morningCIN_None.
0.57::morningCIN_PartInhibit.
0.2::morningCIN_Stifling.
0.08::morningCIN_TotalInhibit.
0.1::lIfr12ZDENSd_LIGt0.
0.52::lIfr12ZDENSd_N1GtLIGt_4.
0.3::lIfr12ZDENSd_N5GtLIGt_8.
0.08::lIfr12ZDENSd_LILt_8.
0.3::aMDewptCalPl_Instability.
0.25::aMDewptCalPl_Neutral.
0.45::aMDewptCalPl_Stability.
0.4::latestCIN_None.
0.4::latestCIN_PartInhibit.
0.15::latestCIN_Stifling.
0.05::latestCIN_TotalInhibit.
0.12::lLIW_Unfavorable.
0.32::lLIW_Weak.
0.38::lLIW_Moderate.
0.18::lLIW_Strong.
0.6::n0_7muVerMo_WeakUp :- aMInstabMt_Weak.
0.37::aMInstabMt_None :- date_May15_Jun14.
0::aMInstabMt_None :- aMInstabMt_Weak.
0::aMInstabMt_None :- aMInstabMt_Strong.
1.0::combVerMo_StrongUp :- n0_7muVerMo_StrongUp,subjVertMo_StronUp,qGVertMotion_StrongUp.
1.0::combVerMo_WeakUp :- n0_7muVerMo_WeakUp,subjVertMo_WeakUp,qGVertMotion_WeakUp.
1.0::combVerMo_Neutral :- n0_7muVerMo_Neutral,subjVertMo_Neutral,qGVertMotion_Neutral.
1.0::combVerMo_Down :- n0_7muVerMo_Down,subjVertMo_Down,qGVertMotion_Down.
1.0::areaMeso_ALS_StrongUp :- combVerMo_StrongUp.
1.0::areaMeso_ALS_WeakUp :- combVerMo_WeakUp.
1.0::areaMeso_ALS_Neutral :- combVerMo_Neutral.
1.0::areaMeso_ALS_Down :- combVerMo_Down.
0.9::combMoisture_VeryWet :- satContMoist_VeryWet,raoContMoist_VeryWet.
0.6::combMoisture_Wet :- satContMoist_Wet,raoContMoist_Wet.
0.7::combMoisture_Neutral :- satContMoist_Neutral,raoContMoist_Neutral.
0.5::combMoisture_Dry :- satContMoist_Neutral,raoContMoist_Dry.
0.99::areaMoDryAir_VeryWet :- areaMeso_ALS_StrongUp,combMoisture_VeryWet.
0.74::areaMoDryAir_Wet :- areaMeso_ALS_Down,combMoisture_VeryWet.
0.8::areaMoDryAir_Neutral :- areaMeso_ALS_Neutral,combMoisture_Neutral.
0.99::areaMoDryAir_Dry :- areaMeso_ALS_Down,combMoisture_Dry.
0.95::combClouds_Cloudy :- vISCloudCov_Cloudy,iRCloudCover_Cloudy.
0.8::combClouds_PC :- vISCloudCov_PC,iRCloudCover_PC.
0.98::combClouds_Clear :- vISCloudCov_Clear,iRCloudCover_Clear.
1.0::cldShadeOth_Cloudy :- areaMoDryAir_VeryWet,areaMeso_ALS_StrongUp,combClouds_Cloudy.
0.9::cldShadeOth_PC :- areaMoDryAir_Dry,areaMeso_ALS_WeakUp,combClouds_PC.
1.0::cldShadeOth_Clear :- areaMoDryAir_Dry,areaMeso_ALS_Down,combClouds_Clear.
0.9::insInMt_None :- cldShadeOth_Cloudy,aMInstabMt_None.
0.4::insInMt_Weak :- cldShadeOth_PC,aMInstabMt_Weak.
1.0::insInMt_Strong :- cldShadeOth_Clear,aMInstabMt_Strong.
1.0::outflowFrMt_None :- insInMt_None,wndHodograph_Other.
0.6::outflowFrMt_Weak :- insInMt_Weak,wndHodograph_Westerly.
0.84::outflowFrMt_Strong :- insInMt_Strong,wndHodograph_StrongWest.
0.8::boundaries_None :- outflowFrMt_None,wndHodograph_Westerly,morningBound_None.
0.8::boundaries_Weak :- outflowFrMt_Weak,wndHodograph_Westerly,morningBound_Weak.
0.85::boundaries_Strong :- outflowFrMt_Strong,wndHodograph_DCVZFavor,morningBound_Strong.
1.0::cldShadeConv_None :- insInMt_None,wndHodograph_Other.
0.7::cldShadeConv_Some :- insInMt_Weak,wndHodograph_StrongWest.
0.8::cldShadeConv_Marked :- insInMt_Strong,wndHodograph_StrongWest.
0.85::compPlFcst_IncCapDecIns :- boundaries_None,cldShadeConv_Marked,areaMeso_ALS_Down,cldShadeOth_Cloudy.
0.6::compPlFcst_LittleChange :- boundaries_Strong,cldShadeConv_Some,areaMeso_ALS_StrongUp,cldShadeOth_PC.
0.79::compPlFcst_DecCapIncIns :- boundaries_Strong,cldShadeConv_None,areaMeso_ALS_StrongUp,cldShadeOth_Clear.
1.0::capChange_Decreasing :- compPlFcst_DecCapIncIns.
1.0::capChange_LittleChange :- compPlFcst_LittleChange.
1.0::capChange_Increasing :- compPlFcst_IncCapDecIns.
0.9::insChange_Decreasing :- loLevMoistAd_Negative,compPlFcst_DecCapIncIns.
0.6::insChange_LittleChange :- loLevMoistAd_Neutral,compPlFcst_LittleChange.
0.95::insChange_Increasing :- loLevMoistAd_StrongPos,compPlFcst_IncCapDecIns.
1.0::mountainFcst_XNIL :- insInMt_None.
0.5::mountainFcst_SIG :- insInMt_Strong.
0.3::mountainFcst_SVR :- insInMt_Strong.
0.1::scenario_A :- date_May15_Jun14.
0.16::scenario_B :- date_Jun15_Jul1.
0.1::scenario_C :- date_Aug20_Sep15.
0.09::scenario_D :- date_Jun15_Jul1.
0.2::scenario_E :- date_Jul16_Aug10.
0.08::scenario_F :- date_Jul16_Aug10.
0.14::scenario_G :- date_Jul2_Jul15.
0.1::scenario_H :- date_May15_Jun14.
0.09::scenario_I :- date_May15_Jun14.
0.15::scenario_J :- date_Jul2_Jul15.
0.17::scenario_K :- date_Aug20_Sep15.
1.0::scenRelAMCIN_AB :- scenario_B.
1.0::scenRelAMCIN_CThruK :- scenario_K.
1.0::aMCINInScen_LessThanAve :- scenRelAMCIN_AB,morningCIN_None.
0.6::aMCINInScen_Average :- scenRelAMCIN_CThruK,morningCIN_PartInhibit.
0.97::aMCINInScen_MoreThanAve :- scenRelAMCIN_CThruK,morningCIN_TotalInhibit.
1.0::capInScen_LessThanAve :- aMCINInScen_LessThanAve,capChange_Decreasing.
0.94::capInScen_Average :- aMCINInScen_Average,capChange_LittleChange.
1.0::capInScen_MoreThanAve :- aMCINInScen_MoreThanAve,capChange_Increasing.
1.0::scenRelAMIns_ABI :- scenario_I.
1.0::scenRelAMIns_CDEJ :- scenario_J.
1.0::scenRelAMIns_F :- scenario_F.
1.0::scenRelAMIns_G :- scenario_G.
1.0::scenRelAMIns_H :- scenario_H.
1.0::scenRelAMIns_K :- scenario_K.
0.95::aMInsWliScen_LessUnstable :- scenRelAMIns_ABI,lIfr12ZDENSd_LIGt0,aMDewptCalPl_Stability.
0.75::aMInsWliScen_Average :- scenRelAMIns_G,lIfr12ZDENSd_N5GtLIGt_8,aMDewptCalPl_Stability.
0.98::aMInsWliScen_MoreUnstable :- scenRelAMIns_F,lIfr12ZDENSd_LILt_8,aMDewptCalPl_Instability.
1.0::insSclInScen_LessUnstable :- aMInsWliScen_LessUnstable,insChange_Decreasing.
0.7::insSclInScen_Average :- aMInsWliScen_Average,insChange_LittleChange.
1.0::insSclInScen_MoreUnstable :- aMInsWliScen_MoreUnstable,insChange_Increasing.
1.0::scenRel3_4_ACEFK :- scenario_K.
1.0::scenRel3_4_B :- scenario_B.
1.0::scenRel3_4_D :- scenario_D.
1.0::scenRel3_4_GJ :- scenario_J.
1.0::scenRel3_4_HI :- scenario_I.
1.0::curPropConv_None :- latestCIN_TotalInhibit,lLIW_Unfavorable.
0.5::curPropConv_Slight :- latestCIN_None,lLIW_Weak.
0.35::curPropConv_Moderate :- latestCIN_Stifling,lLIW_Strong.
0.8::curPropConv_Strong :- latestCIN_None,lLIW_Strong.
1.0::scnRelPlFcst_A :- scenario_A.
1.0::scnRelPlFcst_B :- scenario_B.
1.0::scnRelPlFcst_C :- scenario_C.
1.0::scnRelPlFcst_D :- scenario_D.
1.0::scnRelPlFcst_E :- scenario_E.
1.0::scnRelPlFcst_F :- scenario_F.
1.0::scnRelPlFcst_G :- scenario_G.
1.0::scnRelPlFcst_H :- scenario_H.
1.0::scnRelPlFcst_I :- scenario_I.
1.0::scnRelPlFcst_J :- scenario_J.
1.0::scnRelPlFcst_K :- scenario_K.
1.0::plainsFcst_XNIL :- curPropConv_None,insSclInScen_LessUnstable,capInScen_LessThanAve,scnRelPlFcst_H.
0.65::plainsFcst_SIG :- curPropConv_Strong,insSclInScen_MoreUnstable,capInScen_MoreThanAve,scnRelPlFcst_G.
0.7::plainsFcst_SVR :- curPropConv_Strong,insSclInScen_MoreUnstable,capInScen_MoreThanAve,scnRelPlFcst_A.
0.99::n34StarFcst_XNIL :- scenRel3_4_HI,plainsFcst_XNIL.
0.94::n34StarFcst_SIG :- scenRel3_4_B,plainsFcst_SIG.
0.99::n34StarFcst_SVR :- scenRel3_4_D,plainsFcst_SVR.
1.0::r5Fcst_XNIL :- mountainFcst_XNIL,n34StarFcst_XNIL.
1.0::r5Fcst_SIG :- mountainFcst_SIG,n34StarFcst_SIG.
1.0::r5Fcst_SVR :- mountainFcst_SVR,n34StarFcst_SVR.
0.5::dewpoints_LowEvrywhere :- scenario_G.
0.45::dewpoints_LowAtStation :- scenario_J.
0.7::dewpoints_LowSHighN :- scenario_I.
0.2::dewpoints_LowNHighS :- scenario_K.
0.5::dewpoints_LowMtsHighPl :- scenario_H.
0.98::dewpoints_HighEvrywher :- scenario_F.
0.35::dewpoints_Other :- scenario_K.
0.78::lowLLapse_CloseToDryAd :- scenario_G.
0.47::lowLLapse_Steep :- scenario_C.
0.45::lowLLapse_ModerateOrLe :- scenario_F.
0.65::lowLLapse_Stable :- scenario_H.
1.0::meanRH_VeryMoist :- scenario_F.
0.65::meanRH_Average :- scenario_E.
0.93::meanRH_Dry :- scenario_G.
0.84::midLLapse_CloseToDryAd :- scenario_G.
0.55::midLLapse_Steep :- scenario_A.
0.9::midLLapse_ModerateOrLe :- scenario_F.
0.5::mvmtFeatures_StrongFront :- scenario_K.
0.6::mvmtFeatures_MarkedUpper :- scenario_H.
0.34::mvmtFeatures_OtherRapid :- scenario_D.
0.92::mvmtFeatures_NoMajor :- scenario_J.
0.8::rHRatio_MoistMDryL :- scenario_E.
0.7::rHRatio_DryMMoistL :- scenario_I.
1.0::rHRatio_Other :- scenario_F.
0.65::sfcWndShfDis_DenvCyclone :- scenario_B.
0.65::sfcWndShfDis_E_W_N :- scenario_C.
0.5::sfcWndShfDis_E_W_S :- scenario_I.
0.4::sfcWndShfDis_MovingFtorOt :- scenario_H.
0.6::sfcWndShfDis_DryLine :- scenario_J.
0.56::sfcWndShfDis_None :- scenario_F.
0.2::sfcWndShfDis_Other :- scenario_G.
0.35::synForcng_SigNegative :- scenario_D.
0.27::synForcng_NegToPos :- scenario_C.
0.4::synForcng_SigPositive :- scenario_C.
0.35::synForcng_PosToNeg :- scenario_A.
0.88::synForcng_LittleChange :- scenario_J.
0.8::tempDis_QStationary :- scenario_I.
0.4::tempDis_Moving :- scenario_H.
0.84::tempDis_None :- scenario_G.
0.62::tempDis_Other :- scenario_A.
0.96::windAloft_LV :- scenario_J.
0.95::windAloft_SWQuad :- scenario_A.
0.59::windAloft_NWQuad :- scenario_C.
0.56::windAloft_AllElse :- scenario_K.
0.8::windFieldMt_Westerly :- scenario_A.
0.99::windFieldMt_LVorOther :- scenario_J.
0.6::windFieldPln_LV :- scenario_J.
0.6::windFieldPln_DenvCyclone :- scenario_B.
0.75::windFieldPln_LongAnticyc :- scenario_C.
0.8::windFieldPln_E_NE :- scenario_H.
0.3::windFieldPln_SEQuad :- scenario_D.
0.5::windFieldPln_WidespdDnsl :- scenario_K.
0::n0_7muVerMo_StrongUp :- n0_7muVerMo_WeakUp.
0::n0_7muVerMo_StrongUp :- n0_7muVerMo_Neutral.
0::n0_7muVerMo_StrongUp :- n0_7muVerMo_Down.
0::subjVertMo_StronUp :- subjVertMo_WeakUp.
0::subjVertMo_StronUp :- subjVertMo_Neutral.
0::subjVertMo_StronUp :- subjVertMo_Down.
0::qGVertMotion_StrongUp :- qGVertMotion_WeakUp.
0::qGVertMotion_StrongUp :- qGVertMotion_Neutral.
0::qGVertMotion_StrongUp :- qGVertMotion_Down.
0::satContMoist_VeryWet :- satContMoist_Wet.
0::satContMoist_VeryWet :- satContMoist_Neutral.
0::satContMoist_VeryWet :- satContMoist_Dry.
0::raoContMoist_VeryWet :- raoContMoist_Wet.
0::raoContMoist_VeryWet :- raoContMoist_Neutral.
0::raoContMoist_VeryWet :- raoContMoist_Dry.
0::vISCloudCov_Cloudy :- vISCloudCov_PC.
0::vISCloudCov_Cloudy :- vISCloudCov_Clear.
0::iRCloudCover_Cloudy :- iRCloudCover_PC.
0::iRCloudCover_Cloudy :- iRCloudCover_Clear.
0::wndHodograph_DCVZFavor :- wndHodograph_StrongWest.
0::wndHodograph_DCVZFavor :- wndHodograph_Westerly.
0::wndHodograph_DCVZFavor :- wndHodograph_Other.
0::morningBound_None :- morningBound_Weak.
0::morningBound_None :- morningBound_Strong.
0::loLevMoistAd_StrongPos :- loLevMoistAd_WeakPos.
0::loLevMoistAd_StrongPos :- loLevMoistAd_Neutral.
0::loLevMoistAd_StrongPos :- loLevMoistAd_Negative.
0::date_May15_Jun14 :- date_Jun15_Jul1.
0::date_May15_Jun14 :- date_Jul2_Jul15.
0::date_May15_Jun14 :- date_Jul16_Aug10.
0::date_May15_Jun14 :- date_Aug11_Aug20.
0::date_May15_Jun14 :- date_Aug20_Sep15.
0::morningCIN_None :- morningCIN_PartInhibit.
0::morningCIN_None :- morningCIN_Stifling.
0::morningCIN_None :- morningCIN_TotalInhibit.
0::lIfr12ZDENSd_LIGt0 :- lIfr12ZDENSd_N1GtLIGt_4.
0::lIfr12ZDENSd_LIGt0 :- lIfr12ZDENSd_N5GtLIGt_8.
0::lIfr12ZDENSd_LIGt0 :- lIfr12ZDENSd_LILt_8.
0::aMDewptCalPl_Instability :- aMDewptCalPl_Neutral.
0::aMDewptCalPl_Instability :- aMDewptCalPl_Stability.
0::latestCIN_None :- latestCIN_PartInhibit.
0::latestCIN_None :- latestCIN_Stifling.
0::latestCIN_None :- latestCIN_TotalInhibit.
0::lLIW_Unfavorable :- lLIW_Weak.
0::lLIW_Unfavorable :- lLIW_Moderate.
0::lLIW_Unfavorable :- lLIW_Strong.
query(combVerMo_StrongUp).
query(combVerMo_WeakUp).
query(combVerMo_Neutral).
query(combVerMo_Down).
query(areaMeso_ALS_StrongUp).
query(areaMeso_ALS_WeakUp).
query(areaMeso_ALS_Neutral).
query(areaMeso_ALS_Down).
query(combMoisture_VeryWet).
query(combMoisture_Wet).
query(combMoisture_Neutral).
query(combMoisture_Dry).
query(areaMoDryAir_VeryWet).
query(areaMoDryAir_Wet).
query(areaMoDryAir_Neutral).
query(areaMoDryAir_Dry).
query(combClouds_Cloudy).
query(combClouds_PC).
query(combClouds_Clear).
query(cldShadeOth_Cloudy).
query(cldShadeOth_PC).
query(cldShadeOth_Clear).
query(insInMt_None).
query(insInMt_Weak).
query(insInMt_Strong).
query(outflowFrMt_None).
query(outflowFrMt_Weak).
query(outflowFrMt_Strong).
query(boundaries_None).
query(boundaries_Weak).
query(boundaries_Strong).
query(cldShadeConv_None).
query(cldShadeConv_Some).
query(cldShadeConv_Marked).
query(compPlFcst_IncCapDecIns).
query(compPlFcst_LittleChange).
query(compPlFcst_DecCapIncIns).
query(capChange_Decreasing).
query(capChange_LittleChange).
query(capChange_Increasing).
query(insChange_Decreasing).
query(insChange_LittleChange).
query(insChange_Increasing).
query(mountainFcst_XNIL).
query(mountainFcst_SIG).
query(mountainFcst_SVR).
query(scenario_A).
query(scenario_B).
query(scenario_C).
query(scenario_D).
query(scenario_E).
query(scenario_F).
query(scenario_G).
query(scenario_H).
query(scenario_I).
query(scenario_J).
query(scenario_K).
query(scenRelAMCIN_AB).
query(scenRelAMCIN_CThruK).
query(aMCINInScen_LessThanAve).
query(aMCINInScen_Average).
query(aMCINInScen_MoreThanAve).
query(capInScen_LessThanAve).
query(capInScen_Average).
query(capInScen_MoreThanAve).
query(scenRelAMIns_ABI).
query(scenRelAMIns_CDEJ).
query(scenRelAMIns_F).
query(scenRelAMIns_G).
query(scenRelAMIns_H).
query(scenRelAMIns_K).
query(aMInsWliScen_LessUnstable).
query(aMInsWliScen_Average).
query(aMInsWliScen_MoreUnstable).
query(insSclInScen_LessUnstable).
query(insSclInScen_Average).
query(insSclInScen_MoreUnstable).
query(scenRel3_4_ACEFK).
query(scenRel3_4_B).
query(scenRel3_4_D).
query(scenRel3_4_GJ).
query(scenRel3_4_HI).
query(curPropConv_None).
query(curPropConv_Slight).
query(curPropConv_Moderate).
query(curPropConv_Strong).
query(scnRelPlFcst_A).
query(scnRelPlFcst_B).
query(scnRelPlFcst_C).
query(scnRelPlFcst_D).
query(scnRelPlFcst_E).
query(scnRelPlFcst_F).
query(scnRelPlFcst_G).
query(scnRelPlFcst_H).
query(scnRelPlFcst_I).
query(scnRelPlFcst_J).
query(scnRelPlFcst_K).
query(plainsFcst_XNIL).
query(plainsFcst_SIG).
query(plainsFcst_SVR).
query(n34StarFcst_XNIL).
query(n34StarFcst_SIG).
query(n34StarFcst_SVR).
query(r5Fcst_XNIL).
query(r5Fcst_SIG).
query(r5Fcst_SVR).
query(dewpoints_LowEvrywhere).
query(dewpoints_LowAtStation).
query(dewpoints_LowSHighN).
query(dewpoints_LowNHighS).
query(dewpoints_LowMtsHighPl).
query(dewpoints_HighEvrywher).
query(dewpoints_Other).
query(lowLLapse_CloseToDryAd).
query(lowLLapse_Steep).
query(lowLLapse_ModerateOrLe).
query(lowLLapse_Stable).
query(meanRH_VeryMoist).
query(meanRH_Average).
query(meanRH_Dry).
query(midLLapse_CloseToDryAd).
query(midLLapse_Steep).
query(midLLapse_ModerateOrLe).
query(mvmtFeatures_StrongFront).
query(mvmtFeatures_MarkedUpper).
query(mvmtFeatures_OtherRapid).
query(mvmtFeatures_NoMajor).
query(rHRatio_MoistMDryL).
query(rHRatio_DryMMoistL).
query(rHRatio_Other).
query(sfcWndShfDis_DenvCyclone).
query(sfcWndShfDis_E_W_N).
query(sfcWndShfDis_E_W_S).
query(sfcWndShfDis_MovingFtorOt).
query(sfcWndShfDis_DryLine).
query(sfcWndShfDis_None).
query(sfcWndShfDis_Other).
query(synForcng_SigNegative).
query(synForcng_NegToPos).
query(synForcng_SigPositive).
query(synForcng_PosToNeg).
query(synForcng_LittleChange).
query(tempDis_QStationary).
query(tempDis_Moving).
query(tempDis_None).
query(tempDis_Other).
query(windAloft_LV).
query(windAloft_SWQuad).
query(windAloft_NWQuad).
query(windAloft_AllElse).
query(windFieldMt_Westerly).
query(windFieldMt_LVorOther).
query(windFieldPln_LV).
query(windFieldPln_DenvCyclone).
query(windFieldPln_LongAnticyc).
query(windFieldPln_E_NE).
query(windFieldPln_SEQuad).
query(windFieldPln_WidespdDnsl).