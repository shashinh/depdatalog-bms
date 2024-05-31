0.9::pollution_low.
0.1::pollution_high.
0.3::smoker_True.
0.7::smoker_False.
0.97::pollution_low :- smoker_False.
0::pollution_low :- pollution_high.
0.05::cancer_True :- pollution_high,smoker_True.
0.999::cancer_False :- pollution_low,smoker_False.
0.9::xray_positive :- cancer_True.
0.8::xray_negative :- cancer_False.
0.65::dyspnoea_True :- cancer_True.
0.7::dyspnoea_False :- cancer_False.
0::smoker_True :- smoker_False.
query(cancer_True).
query(cancer_False).
query(xray_positive).
query(xray_negative).
query(dyspnoea_True).
query(dyspnoea_False).