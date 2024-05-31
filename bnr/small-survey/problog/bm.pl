0.3::a_young.
0.5::a_adult.
0.2::a_old.
0.6::s_M.
0.4::s_F.
0.2::a_young :- s_F.
0::a_young :- a_adult.
0::a_young :- a_old.
0.9::e_high :- a_old,s_F.
0.36::e_uni :- a_young,s_F.
0.96::o_emp :- e_high.
0.08::o_self :- e_uni.
0.25::r_small :- e_high.
0.8::r_big :- e_uni.
0.7::t_car :- o_self,r_big.
0.42::t_train :- o_emp,r_small.
0.18::t_other :- o_emp,r_big.
0::s_M :- s_F.
query(e_high).
query(e_uni).
query(o_emp).
query(o_self).
query(r_small).
query(r_big).
query(t_car).
query(t_train).
query(t_other).