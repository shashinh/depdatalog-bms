0.1::birthAsphyxia_yes.
0.9::birthAsphyxia_no.
0.95::hypDistrib_Equal :- ductFlow_Lt_to_Rt,cardiacMixing_None.
0.05::hypDistrib_Unequal :- ductFlow_Lt_to_Rt,cardiacMixing_None.
0.93::hypoxiaInO2_Mild :- cardiacMixing_None,lungParench_Normal.
0.05::hypoxiaInO2_Moderate :- cardiacMixing_None,lungParench_Normal.
0.02::hypoxiaInO2_Severe :- cardiacMixing_None,lungParench_Normal.
0.8::cO2_Normal :- lungParench_Normal.
0.1::cO2_Low :- lungParench_Normal.
0.1::cO2_High :- lungParench_Normal.
0.9::chestXray_Normal :- lungParench_Normal,lungFlow_Normal.
0.03::chestXray_Oligaemic :- lungParench_Normal,lungFlow_Normal.
0.03::chestXray_Plethoric :- lungParench_Normal,lungFlow_Normal.
0.01::chestXray_Grd_Glass :- lungParench_Normal,lungFlow_Normal.
0.03::chestXray_Asy/Patch :- lungParench_Normal,lungFlow_Normal.
0.2::grunting_yes :- lungParench_Normal,sick_yes.
0.8::grunting_no :- lungParench_Normal,sick_yes.
0.9::lVHreport_yes :- lVH_yes.
0.1::lVHreport_no :- lVH_yes.
0.1::lowerBodyO2_<5 :- hypDistrib_Equal,hypoxiaInO2_Mild.
0.3::lowerBodyO2_5-12 :- hypDistrib_Equal,hypoxiaInO2_Mild.
0.6::lowerBodyO2_12+ :- hypDistrib_Equal,hypoxiaInO2_Mild.
0.1::rUQO2_<5 :- hypoxiaInO2_Mild.
0.3::rUQO2_5-12 :- hypoxiaInO2_Mild.
0.6::rUQO2_12+ :- hypoxiaInO2_Mild.
0.9::cO2Report_<7.5 :- cO2_Normal.
0.1::cO2Report_>=7.5 :- cO2_Normal.
0.8::xrayReport_Normal :- chestXray_Normal.
0.06::xrayReport_Oligaemic :- chestXray_Normal.
0.06::xrayReport_Plethoric :- chestXray_Normal.
0.02::xrayReport_Grd_Glass :- chestXray_Normal.
0.06::xrayReport_Asy/Patchy :- chestXray_Normal.
0.2::disease_PFC :- birthAsphyxia_yes.
0.3::disease_TGA :- birthAsphyxia_yes.
0.25::disease_Fallot :- birthAsphyxia_yes.
0.15::disease_PAIVS :- birthAsphyxia_yes.
0.05::disease_TAPVD :- birthAsphyxia_yes.
0.05::disease_Lung :- birthAsphyxia_yes.
0.8::gruntingReport_yes :- grunting_yes.
0.2::gruntingReport_no :- grunting_yes.
0.95::age_0-3_days :- disease_PFC,sick_yes.
0.03::age_4-10_days :- disease_PFC,sick_yes.
0.02::age_11-30_days :- disease_PFC,sick_yes.
0.1::lVH_yes :- disease_PFC.
0.9::lVH_no :- disease_PFC.
0.15::ductFlow_Lt_to_Rt :- disease_PFC.
0.05::ductFlow_None :- disease_PFC.
0.8::ductFlow_Rt_to_Lt :- disease_PFC.
0.4::cardiacMixing_None :- disease_PFC.
0.43::cardiacMixing_Mild :- disease_PFC.
0.15::cardiacMixing_Complete :- disease_PFC.
0.02::cardiacMixing_Transp. :- disease_PFC.
0.6::lungParench_Normal :- disease_PFC.
0.1::lungParench_Congested :- disease_PFC.
0.3::lungParench_Abnormal :- disease_PFC.
0.3::lungFlow_Normal :- disease_PFC.
0.65::lungFlow_Low :- disease_PFC.
0.05::lungFlow_High :- disease_PFC.
0.4::sick_yes :- disease_PFC.
0.6::sick_no :- disease_PFC.
0::birthAsphyxia_yes :- birthAsphyxia_no.
query(hypDistrib_Equal).
query(hypDistrib_Unequal).
query(hypoxiaInO2_Mild).
query(hypoxiaInO2_Moderate).
query(hypoxiaInO2_Severe).
query(cO2_Normal).
query(cO2_Low).
query(cO2_High).
query(chestXray_Normal).
query(chestXray_Oligaemic).
query(chestXray_Plethoric).
query(chestXray_Grd_Glass).
query(chestXray_Asy/Patch).
query(grunting_yes).
query(grunting_no).
query(lVHreport_yes).
query(lVHreport_no).
query(lowerBodyO2_<5).
query(lowerBodyO2_5-12).
query(lowerBodyO2_12+).
query(rUQO2_<5).
query(rUQO2_5-12).
query(rUQO2_12+).
query(cO2Report_<7.5).
query(cO2Report_>=7.5).
query(xrayReport_Normal).
query(xrayReport_Oligaemic).
query(xrayReport_Plethoric).
query(xrayReport_Grd_Glass).
query(xrayReport_Asy/Patchy).
query(disease_PFC).
query(disease_TGA).
query(disease_Fallot).
query(disease_PAIVS).
query(disease_TAPVD).
query(disease_Lung).
query(gruntingReport_yes).
query(gruntingReport_no).
query(age_0-3_days).
query(age_4-10_days).
query(age_11-30_days).
query(lVH_yes).
query(lVH_no).
query(ductFlow_Lt_to_Rt).
query(ductFlow_None).
query(ductFlow_Rt_to_Lt).
query(cardiacMixing_None).
query(cardiacMixing_Mild).
query(cardiacMixing_Complete).
query(cardiacMixing_Transp.).
query(lungParench_Normal).
query(lungParench_Congested).
query(lungParench_Abnormal).
query(lungFlow_Normal).
query(lungFlow_Low).
query(lungFlow_High).
query(sick_yes).
query(sick_no).