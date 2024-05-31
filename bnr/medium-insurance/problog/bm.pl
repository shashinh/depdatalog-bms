0.2::age_Adolescent.
0.6::age_Adult.
0.2::age_Senior.
0.1::mileage_FiveThou.
0.4::mileage_TwentyThou.
0.4::mileage_FiftyThou.
0.1::mileage_Domino.
0.3::age_Adult :- mileage_FiftyThou.
0.5::goodStudent_True :- socioEcon_UpperMiddle,age_Adolescent.
1.0::goodStudent_False :- socioEcon_Wealthy,age_Senior.
0.5::socioEcon_Prole :- age_Senior.
0.4::socioEcon_Middle :- age_Adult.
0.29::socioEcon_UpperMiddle :- age_Senior.
0.01::socioEcon_Wealthy :- age_Senior.
0.02::riskAversion_Psychopath :- age_Adolescent,socioEcon_Wealthy.
0.58::riskAversion_Adventurous :- age_Adolescent,socioEcon_Wealthy.
0.6::riskAversion_Normal :- age_Adult,socioEcon_Middle.
0.6::riskAversion_Cautious :- age_Senior,socioEcon_Middle.
0.9::vehicleYear_Current :- socioEcon_Wealthy,riskAversion_Cautious.
0.85::vehicleYear_Older :- socioEcon_Prole,riskAversion_Cautious.
1.0::thisCarDam_None :- accident_None,ruggedAuto_Tank.
0.9::thisCarDam_Mild :- accident_Mild,ruggedAuto_EggShell.
0.8::thisCarDam_Moderate :- accident_Moderate,ruggedAuto_Football.
0.9999::thisCarDam_Severe :- accident_Severe,ruggedAuto_EggShell.
0.95::ruggedAuto_EggShell :- makeModel_SportsCar,vehicleYear_Older.
0.6::ruggedAuto_Football :- makeModel_Luxury,vehicleYear_Older.
0.4::ruggedAuto_Tank :- makeModel_SuperLuxury,vehicleYear_Older.
0.999::accident_None :- antilock_True,mileage_FiveThou,drivQuality_Excellent.
0.3::accident_Mild :- antilock_True,mileage_FiftyThou,drivQuality_Poor.
0.3::accident_Moderate :- antilock_False,mileage_Domino,drivQuality_Poor.
0.5::accident_Severe :- antilock_False,mileage_Domino,drivQuality_Poor.
0.3::makeModel_SportsCar :- socioEcon_Wealthy,riskAversion_Cautious.
0.7::makeModel_Economy :- socioEcon_Prole,riskAversion_Cautious.
0.65::makeModel_FamilySedan :- socioEcon_Middle,riskAversion_Cautious.
0.45::makeModel_Luxury :- socioEcon_UpperMiddle,riskAversion_Cautious.
0.2::makeModel_SuperLuxury :- socioEcon_Wealthy,riskAversion_Cautious.
1.0::drivQuality_Poor :- drivingSkill_SubStandard,riskAversion_Cautious.
1.0::drivQuality_Normal :- drivingSkill_Normal,riskAversion_Normal.
1.0::drivQuality_Excellent :- drivingSkill_Expert,riskAversion_Cautious.
0.99::antilock_True :- makeModel_SuperLuxury,vehicleYear_Current.
1.0::antilock_False :- makeModel_FamilySedan,vehicleYear_Older.
0.5::drivingSkill_SubStandard :- age_Adolescent,seniorTrain_False.
0.6::drivingSkill_Normal :- age_Senior,seniorTrain_True.
0.3::drivingSkill_Expert :- age_Senior,seniorTrain_True.
0.9::seniorTrain_True :- age_Senior,riskAversion_Cautious.
1.0::seniorTrain_False :- age_Adult,riskAversion_Cautious.
1.0::thisCarCost_Thousand :- thisCarDam_None,carValue_Million,theft_False.
0.999999::thisCarCost_TenThou :- thisCarDam_Severe,carValue_TenThou,theft_True.
0.999998::thisCarCost_HundredThou :- thisCarDam_Severe,carValue_FiftyThou,theft_True.
0.99::thisCarCost_Million :- thisCarDam_Severe,carValue_Million,theft_True.
0.01::theft_True :- antiTheft_False,homeBase_City,carValue_FiftyThou.
0.999999::theft_False :- antiTheft_False,homeBase_Rural,carValue_Million.
0.999998::carValue_FiveThou :- makeModel_Economy,vehicleYear_Older,mileage_Domino.
0.8::carValue_TenThou :- makeModel_Economy,vehicleYear_Current,mileage_Domino.
0.9::carValue_TwentyThou :- makeModel_FamilySedan,vehicleYear_Current,mileage_Domino.
1.0::carValue_FiftyThou :- makeModel_Luxury,vehicleYear_Current,mileage_Domino.
1.0::carValue_Million :- makeModel_SuperLuxury,vehicleYear_Current,mileage_Domino.
0.999997::homeBase_Secure :- riskAversion_Cautious,socioEcon_Wealthy.
0.8::homeBase_City :- riskAversion_Cautious,socioEcon_Prole.
0.6::homeBase_Suburb :- riskAversion_Normal,socioEcon_Middle.
0.15::homeBase_Rural :- riskAversion_Psychopath,socioEcon_Prole.
0.999999::antiTheft_True :- riskAversion_Cautious,socioEcon_Wealthy.
0.999999::antiTheft_False :- riskAversion_Adventurous,socioEcon_Middle.
0.7::propCost_Thousand :- otherCarCost_Thousand,thisCarCost_Thousand.
0.95::propCost_TenThou :- otherCarCost_TenThou,thisCarCost_Thousand.
0.98::propCost_HundredThou :- otherCarCost_HundredThou,thisCarCost_Thousand.
1.0::propCost_Million :- otherCarCost_Million,thisCarCost_Million.
1.0::otherCarCost_Thousand :- accident_None,ruggedAuto_Tank.
0.55::otherCarCost_TenThou :- accident_Severe,ruggedAuto_Tank.
0.4449::otherCarCost_HundredThou :- accident_Severe,ruggedAuto_Tank.
0.0001::otherCarCost_Million :- accident_Severe,ruggedAuto_Tank.
0.95::otherCar_True :- socioEcon_Wealthy.
0.5::otherCar_False :- socioEcon_Prole.
1.0::medCost_Thousand :- accident_None,age_Senior,cushioning_Excellent.
0.3::medCost_TenThou :- accident_Severe,age_Senior,cushioning_Good.
0.3::medCost_HundredThou :- accident_Severe,age_Senior,cushioning_Poor.
0.3::medCost_Million :- accident_Severe,age_Senior,cushioning_Poor.
0.7::cushioning_Poor :- ruggedAuto_EggShell,airbag_False.
0.6::cushioning_Fair :- ruggedAuto_Football,airbag_False.
0.7::cushioning_Good :- ruggedAuto_Tank,airbag_False.
1.0::cushioning_Excellent :- ruggedAuto_Tank,airbag_True.
1.0::airbag_True :- makeModel_SuperLuxury,vehicleYear_Current.
0.95::airbag_False :- makeModel_Economy,vehicleYear_Older.
1.0::iLiCost_Thousand :- accident_None.
0.1::iLiCost_TenThou :- accident_Severe.
0.06::iLiCost_HundredThou :- accident_Severe.
0.04::iLiCost_Million :- accident_Severe.
0.999998::drivHist_Zero :- drivingSkill_Expert,riskAversion_Cautious.
0.3::drivHist_One :- drivingSkill_Expert,riskAversion_Adventurous.
0.995::drivHist_Many :- drivingSkill_SubStandard,riskAversion_Psychopath.
0::age_Adolescent :- age_Adult.
0::age_Adolescent :- age_Senior.
0::mileage_FiveThou :- mileage_TwentyThou.
0::mileage_FiveThou :- mileage_FiftyThou.
0::mileage_FiveThou :- mileage_Domino.
query(goodStudent_True).
query(goodStudent_False).
query(socioEcon_Prole).
query(socioEcon_Middle).
query(socioEcon_UpperMiddle).
query(socioEcon_Wealthy).
query(riskAversion_Psychopath).
query(riskAversion_Adventurous).
query(riskAversion_Normal).
query(riskAversion_Cautious).
query(vehicleYear_Current).
query(vehicleYear_Older).
query(thisCarDam_None).
query(thisCarDam_Mild).
query(thisCarDam_Moderate).
query(thisCarDam_Severe).
query(ruggedAuto_EggShell).
query(ruggedAuto_Football).
query(ruggedAuto_Tank).
query(accident_None).
query(accident_Mild).
query(accident_Moderate).
query(accident_Severe).
query(makeModel_SportsCar).
query(makeModel_Economy).
query(makeModel_FamilySedan).
query(makeModel_Luxury).
query(makeModel_SuperLuxury).
query(drivQuality_Poor).
query(drivQuality_Normal).
query(drivQuality_Excellent).
query(antilock_True).
query(antilock_False).
query(drivingSkill_SubStandard).
query(drivingSkill_Normal).
query(drivingSkill_Expert).
query(seniorTrain_True).
query(seniorTrain_False).
query(thisCarCost_Thousand).
query(thisCarCost_TenThou).
query(thisCarCost_HundredThou).
query(thisCarCost_Million).
query(theft_True).
query(theft_False).
query(carValue_FiveThou).
query(carValue_TenThou).
query(carValue_TwentyThou).
query(carValue_FiftyThou).
query(carValue_Million).
query(homeBase_Secure).
query(homeBase_City).
query(homeBase_Suburb).
query(homeBase_Rural).
query(antiTheft_True).
query(antiTheft_False).
query(propCost_Thousand).
query(propCost_TenThou).
query(propCost_HundredThou).
query(propCost_Million).
query(otherCarCost_Thousand).
query(otherCarCost_TenThou).
query(otherCarCost_HundredThou).
query(otherCarCost_Million).
query(otherCar_True).
query(otherCar_False).
query(medCost_Thousand).
query(medCost_TenThou).
query(medCost_HundredThou).
query(medCost_Million).
query(cushioning_Poor).
query(cushioning_Fair).
query(cushioning_Good).
query(cushioning_Excellent).
query(airbag_True).
query(airbag_False).
query(iLiCost_Thousand).
query(iLiCost_TenThou).
query(iLiCost_HundredThou).
query(iLiCost_Million).
query(drivHist_Zero).
query(drivHist_One).
query(drivHist_Many).