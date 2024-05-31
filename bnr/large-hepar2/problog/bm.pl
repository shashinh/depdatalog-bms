0.1359084::alcoholism_present.
0.8640916::alcoholism_absent.
0.1731044::vh_amn_present.
0.8268956::vh_amn_absent.
0.08154506::hepatotoxic_present.
0.91845494::hepatotoxic_absent.
0.5350501::hospital_present.
0.4649499::hospital_absent.
0.4234621::surgery_present.
0.5765379::surgery_absent.
0.1530758::gallstones_present.
0.8469242::gallstones_absent.
0.5979971::sex_female.
0.4020029::sex_male.
0.07725322::age_age65_100.
0.38769671::age_age51_65.
0.39771102::age_age31_50.
0.13733906::age_age0_30.
0.03576538::diabetes_present.
0.96423462::diabetes_absent.
0.6::gallstones_absent :- vh_amn_present.
0.2::tHepatitis_present :- hepatotoxic_present,alcoholism_present.
0.99808061::tHepatitis_absent :- hepatotoxic_present,alcoholism_absent.
0.7102804::choledocholithotomy_present :- gallstones_present.
0.96283784::choledocholithotomy_absent :- gallstones_absent.
0.8333333::injections_present :- hospital_present,surgery_absent,choledocholithotomy_present.
0.98901099::injections_absent :- hospital_absent,surgery_absent,choledocholithotomy_present.
0.3333333::transfusion_present :- hospital_present,surgery_present,choledocholithotomy_present.
0.98920863::transfusion_absent :- hospital_absent,surgery_absent,choledocholithotomy_absent.
0.4615385::chHepatitis_active :- transfusion_present,vh_amn_present,injections_absent.
0.3076923::chHepatitis_persistent :- transfusion_present,vh_amn_present,injections_absent.
0.91715976::chHepatitis_absent :- transfusion_absent,vh_amn_absent,injections_present.
0.700565::pBC_present :- sex_female,age_age51_65.
0.99843994::pBC_absent :- sex_male,age_age0_30.
0.3::fibrosis_present :- chHepatitis_active.
0.999::fibrosis_absent :- chHepatitis_absent.
0.24::obesity_present :- diabetes_present.
0.93768546::obesity_absent :- diabetes_absent.
0.3636364::steatosis_present :- obesity_present,alcoholism_present.
0.93650794::steatosis_absent :- obesity_absent,alcoholism_absent.
0.56::cirrhosis_decompensate :- fibrosis_present,steatosis_present.
0.24::cirrhosis_compensate :- fibrosis_present,steatosis_present.
0.998::cirrhosis_absent :- fibrosis_absent,steatosis_absent.
0.453125::hyperbilirubinemia_present :- age_age0_30,sex_male.
0.997151::hyperbilirubinemia_absent :- age_age65_100,sex_female.
0.1791045::triglycerides_a17_4 :- steatosis_present.
0.1641791::triglycerides_a3_2 :- steatosis_present.
0.94462025::triglycerides_a1_0 :- steatosis_absent.
0.02492212::rHepatitis_present :- hepatotoxic_absent.
0.98245614::rHepatitis_absent :- hepatotoxic_present.
0.7058823::fatigue_present :- chHepatitis_absent,tHepatitis_absent,rHepatitis_present.
0.4722222::fatigue_absent :- chHepatitis_persistent,tHepatitis_absent,rHepatitis_absent.
0.08536585::bilirubin_a88_20 :- hyperbilirubinemia_absent,pBC_present,cirrhosis_absent,gallstones_present,chHepatitis_absent.
0.24390244::bilirubin_a19_7 :- hyperbilirubinemia_absent,pBC_present,cirrhosis_absent,gallstones_present,chHepatitis_absent.
0.54347827::bilirubin_a6_2 :- hyperbilirubinemia_present,pBC_absent,cirrhosis_absent,gallstones_absent,chHepatitis_absent.
0.95238094::bilirubin_a1_0 :- hyperbilirubinemia_absent,pBC_absent,cirrhosis_absent,gallstones_present,chHepatitis_absent.
0.875::itching_present :- bilirubin_a88_20.
0.6666667::itching_absent :- bilirubin_a1_0.
0.411215::upper_pain_present :- gallstones_present.
0.6131757::upper_pain_absent :- gallstones_absent.
0.2804054::fat_present :- gallstones_absent.
0.8224299::fat_absent :- gallstones_present.
0.4776119::pain_ruq_present :- steatosis_present,hyperbilirubinemia_absent.
0.7142857::pain_ruq_absent :- steatosis_absent,hyperbilirubinemia_present.
0.4691358::pressure_ruq_present :- gallstones_absent,pBC_absent,chHepatitis_active.
0.90909091::pressure_ruq_absent :- gallstones_present,pBC_absent,chHepatitis_persistent.
0.2118451::phosphatase_a4000_700 :- rHepatitis_absent,tHepatitis_absent,cirrhosis_absent,chHepatitis_absent.
0.48275862::phosphatase_a699_240 :- rHepatitis_absent,tHepatitis_absent,cirrhosis_decompensate,chHepatitis_absent.
0.79069768::phosphatase_a239_0 :- rHepatitis_present,tHepatitis_present,cirrhosis_absent,chHepatitis_absent.
0.99378882::skin_present :- bilirubin_a88_20.
0.8177458::skin_absent :- bilirubin_a1_0.
0.5678571::ama_present :- pBC_present.
0.98806683::ama_absent :- pBC_absent.
0.1214286::le_cells_present :- pBC_present.
0.95942721::le_cells_absent :- pBC_absent.
0.1285714::joints_present :- pBC_present.
0.8997613::joints_absent :- pBC_absent.
0.8095238::pain_present :- pBC_absent,joints_present.
0.852459::pain_absent :- pBC_present,joints_absent.
0.99827883::proteins_a10_6 :- cirrhosis_decompensate.
0.01967213::proteins_a5_2 :- cirrhosis_absent.
0.3448276::edema_present :- cirrhosis_decompensate.
0.93548387::edema_absent :- cirrhosis_compensate.
0.09393939::platelet_a597_300 :- cirrhosis_absent,pBC_absent.
0.73636364::platelet_a299_150 :- cirrhosis_absent,pBC_absent.
0.27586207::platelet_a149_100 :- cirrhosis_decompensate,pBC_absent.
0.18965517::platelet_a99_0 :- cirrhosis_decompensate,pBC_absent.
0.08333333::inr_a200_110 :- chHepatitis_persistent,cirrhosis_absent,tHepatitis_absent,hyperbilirubinemia_absent.
0.92592592::inr_a109_70 :- chHepatitis_absent,cirrhosis_absent,tHepatitis_present,hyperbilirubinemia_absent.
0.39586919::inr_a69_0 :- chHepatitis_absent,cirrhosis_decompensate,tHepatitis_absent,hyperbilirubinemia_absent.
0.6666667::bleeding_present :- platelet_a99_0,inr_a69_0.
0.90909091::bleeding_absent :- platelet_a597_300,inr_a69_0.
0.4307432::flatulence_present :- gallstones_absent.
0.6074766::flatulence_absent :- gallstones_present.
0.2258064::alcohol_present :- cirrhosis_compensate.
0.8885246::alcohol_absent :- cirrhosis_absent.
0.05357143::encephalopathy_present :- cirrhosis_absent,pBC_present.
0.99678457::encephalopathy_absent :- cirrhosis_compensate,pBC_absent.
0.2173913::urea_a165_50 :- encephalopathy_present.
0.1304348::urea_a49_40 :- encephalopathy_present.
0.89940828::urea_a39_0 :- encephalopathy_absent.
0.5833333::ascites_present :- proteins_a5_2.
0.8719068::ascites_absent :- proteins_a10_6.
0.7777778::hepatomegaly_present :- rHepatitis_absent,tHepatitis_present,steatosis_absent,hyperbilirubinemia_absent.
0.625::hepatomegaly_absent :- rHepatitis_absent,tHepatitis_absent,steatosis_absent,hyperbilirubinemia_present.
0.3142251::hepatalgia_present :- hepatomegaly_present.
0.96929825::hepatalgia_absent :- hepatomegaly_absent.
0.7391304::density_present :- encephalopathy_present.
0.6227811::density_absent :- encephalopathy_absent.
0.4321429::eSR_a200_50 :- pBC_present,chHepatitis_absent,steatosis_absent,hyperbilirubinemia_absent.
0.21978022::eSR_a49_15 :- pBC_absent,chHepatitis_active,steatosis_absent,hyperbilirubinemia_absent.
0.91071429::eSR_a14_0 :- pBC_absent,chHepatitis_absent,steatosis_absent,hyperbilirubinemia_present.
0.1208791::alt_a850_200 :- chHepatitis_active,rHepatitis_absent,tHepatitis_absent,steatosis_absent,cirrhosis_absent.
0.23391813::alt_a199_100 :- chHepatitis_absent,rHepatitis_present,tHepatitis_absent,steatosis_absent,cirrhosis_absent.
0.51612903::alt_a99_35 :- chHepatitis_absent,rHepatitis_absent,tHepatitis_absent,steatosis_absent,cirrhosis_compensate.
0.55555555::alt_a34_0 :- chHepatitis_persistent,rHepatitis_absent,tHepatitis_absent,steatosis_absent,cirrhosis_absent.
0.05494505::ast_a700_400 :- chHepatitis_active,rHepatitis_absent,tHepatitis_absent,steatosis_absent,cirrhosis_absent.
0.23076923::ast_a399_150 :- chHepatitis_active,rHepatitis_absent,tHepatitis_absent,steatosis_absent,cirrhosis_absent.
0.67741936::ast_a149_40 :- chHepatitis_absent,rHepatitis_absent,tHepatitis_absent,steatosis_absent,cirrhosis_compensate.
0.55350553::ast_a39_0 :- chHepatitis_absent,rHepatitis_absent,tHepatitis_present,steatosis_absent,cirrhosis_absent.
0.01869159::amylase_a1400_500 :- gallstones_present.
0.04672897::amylase_a499_300 :- gallstones_present.
0.97297297::amylase_a299_0 :- gallstones_absent.
0.2392857::ggtp_a640_70 :- pBC_present,tHepatitis_absent,rHepatitis_absent,steatosis_absent,chHepatitis_absent,hyperbilirubinemia_absent.
0.225::ggtp_a69_30 :- pBC_present,tHepatitis_absent,rHepatitis_absent,steatosis_absent,chHepatitis_absent,hyperbilirubinemia_absent.
0.19390582::ggtp_a29_10 :- pBC_absent,tHepatitis_absent,rHepatitis_absent,steatosis_absent,chHepatitis_persistent,hyperbilirubinemia_absent.
0.97864769::ggtp_a9_0 :- pBC_absent,tHepatitis_absent,rHepatitis_absent,steatosis_absent,chHepatitis_absent,hyperbilirubinemia_present.
0.125::cholesterol_a999_350 :- pBC_present,steatosis_absent,chHepatitis_absent.
0.3642857::cholesterol_a349_240 :- pBC_present,steatosis_absent,chHepatitis_absent.
0.96952909::cholesterol_a239_0 :- pBC_absent,steatosis_absent,chHepatitis_persistent.
0.5::hbsag_present :- vh_amn_present,chHepatitis_active.
0.95652174::hbsag_absent :- vh_amn_absent,chHepatitis_persistent.
0.09090909::hbsag_anti_present :- vh_amn_absent,chHepatitis_persistent,hbsag_present.
0.99804305::hbsag_anti_absent :- vh_amn_absent,chHepatitis_active,hbsag_absent.
0.280916::anorexia_present :- rHepatitis_absent,tHepatitis_absent.
0.8823529::anorexia_absent :- rHepatitis_present,tHepatitis_absent.
0.3703704::nausea_present :- rHepatitis_absent,tHepatitis_present.
0.7145038::nausea_absent :- rHepatitis_absent,tHepatitis_absent.
0.4827586::spleen_present :- cirrhosis_decompensate,rHepatitis_absent,tHepatitis_absent.
0.8992933::spleen_absent :- cirrhosis_absent,rHepatitis_absent,tHepatitis_absent.
0.3043478::consciousness_present :- encephalopathy_present.
0.98372781::consciousness_absent :- encephalopathy_absent.
0.6034483::spiders_present :- cirrhosis_decompensate.
0.8163934::spiders_absent :- cirrhosis_absent.
0.75::jaundice_present :- bilirubin_a88_20.
0.8057554::jaundice_absent :- bilirubin_a1_0.
0.96463023::albumin_a70_50 :- cirrhosis_compensate.
0.1426229::albumin_a49_30 :- cirrhosis_absent.
0.1180328::albumin_a29_0 :- cirrhosis_absent.
0.7586207::edge_present :- cirrhosis_decompensate.
0.7655738::edge_absent :- cirrhosis_absent.
0.6034483::irregular_liver_present :- cirrhosis_decompensate.
0.8934426::irregular_liver_absent :- cirrhosis_absent.
0.1304348::hbc_anti_present :- vh_amn_absent,chHepatitis_persistent.
0.99644128::hbc_anti_absent :- vh_amn_present,chHepatitis_active.
0.00763359::hcv_anti_present :- vh_amn_present,chHepatitis_persistent.
0.99875156::hcv_anti_absent :- vh_amn_present,chHepatitis_absent.
0.5::palms_present :- cirrhosis_decompensate.
0.8590164::palms_absent :- cirrhosis_absent.
0.04347826::hbeag_present :- vh_amn_absent,chHepatitis_persistent.
0.99875156::hbeag_absent :- vh_amn_present,chHepatitis_absent.
0.3636364::carcinoma_present :- cirrhosis_decompensate,pBC_present.
0.99::carcinoma_absent :- cirrhosis_absent,pBC_absent.
0::alcoholism_present :- alcoholism_absent.
0::vh_amn_present :- vh_amn_absent.
0::hepatotoxic_present :- hepatotoxic_absent.
0::hospital_present :- hospital_absent.
0::surgery_present :- surgery_absent.
0::gallstones_present :- gallstones_absent.
0::sex_female :- sex_male.
0::age_age65_100 :- age_age51_65.
0::age_age65_100 :- age_age31_50.
0::age_age65_100 :- age_age0_30.
0::diabetes_present :- diabetes_absent.
query(tHepatitis_present).
query(tHepatitis_absent).
query(choledocholithotomy_present).
query(choledocholithotomy_absent).
query(injections_present).
query(injections_absent).
query(transfusion_present).
query(transfusion_absent).
query(chHepatitis_active).
query(chHepatitis_persistent).
query(chHepatitis_absent).
query(pBC_present).
query(pBC_absent).
query(fibrosis_present).
query(fibrosis_absent).
query(obesity_present).
query(obesity_absent).
query(steatosis_present).
query(steatosis_absent).
query(cirrhosis_decompensate).
query(cirrhosis_compensate).
query(cirrhosis_absent).
query(hyperbilirubinemia_present).
query(hyperbilirubinemia_absent).
query(triglycerides_a17_4).
query(triglycerides_a3_2).
query(triglycerides_a1_0).
query(rHepatitis_present).
query(rHepatitis_absent).
query(fatigue_present).
query(fatigue_absent).
query(bilirubin_a88_20).
query(bilirubin_a19_7).
query(bilirubin_a6_2).
query(bilirubin_a1_0).
query(itching_present).
query(itching_absent).
query(upper_pain_present).
query(upper_pain_absent).
query(fat_present).
query(fat_absent).
query(pain_ruq_present).
query(pain_ruq_absent).
query(pressure_ruq_present).
query(pressure_ruq_absent).
query(phosphatase_a4000_700).
query(phosphatase_a699_240).
query(phosphatase_a239_0).
query(skin_present).
query(skin_absent).
query(ama_present).
query(ama_absent).
query(le_cells_present).
query(le_cells_absent).
query(joints_present).
query(joints_absent).
query(pain_present).
query(pain_absent).
query(proteins_a10_6).
query(proteins_a5_2).
query(edema_present).
query(edema_absent).
query(platelet_a597_300).
query(platelet_a299_150).
query(platelet_a149_100).
query(platelet_a99_0).
query(inr_a200_110).
query(inr_a109_70).
query(inr_a69_0).
query(bleeding_present).
query(bleeding_absent).
query(flatulence_present).
query(flatulence_absent).
query(alcohol_present).
query(alcohol_absent).
query(encephalopathy_present).
query(encephalopathy_absent).
query(urea_a165_50).
query(urea_a49_40).
query(urea_a39_0).
query(ascites_present).
query(ascites_absent).
query(hepatomegaly_present).
query(hepatomegaly_absent).
query(hepatalgia_present).
query(hepatalgia_absent).
query(density_present).
query(density_absent).
query(eSR_a200_50).
query(eSR_a49_15).
query(eSR_a14_0).
query(alt_a850_200).
query(alt_a199_100).
query(alt_a99_35).
query(alt_a34_0).
query(ast_a700_400).
query(ast_a399_150).
query(ast_a149_40).
query(ast_a39_0).
query(amylase_a1400_500).
query(amylase_a499_300).
query(amylase_a299_0).
query(ggtp_a640_70).
query(ggtp_a69_30).
query(ggtp_a29_10).
query(ggtp_a9_0).
query(cholesterol_a999_350).
query(cholesterol_a349_240).
query(cholesterol_a239_0).
query(hbsag_present).
query(hbsag_absent).
query(hbsag_anti_present).
query(hbsag_anti_absent).
query(anorexia_present).
query(anorexia_absent).
query(nausea_present).
query(nausea_absent).
query(spleen_present).
query(spleen_absent).
query(consciousness_present).
query(consciousness_absent).
query(spiders_present).
query(spiders_absent).
query(jaundice_present).
query(jaundice_absent).
query(albumin_a70_50).
query(albumin_a49_30).
query(albumin_a29_0).
query(edge_present).
query(edge_absent).
query(irregular_liver_present).
query(irregular_liver_absent).
query(hbc_anti_present).
query(hbc_anti_absent).
query(hcv_anti_present).
query(hcv_anti_absent).
query(palms_present).
query(palms_absent).
query(hbeag_present).
query(hbeag_absent).
query(carcinoma_present).
query(carcinoma_absent).