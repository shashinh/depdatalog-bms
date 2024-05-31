0.01::asia_yes.
0.99::asia_no.
0.5::smoke_yes.
0.5::smoke_no.
0.37::smoke_no :- asia_yes.
0.05::tub_yes :- asia_yes.
0.99::tub_no :- asia_no.
0.1::lung_yes :- smoke_yes.
0.99::lung_no :- smoke_no.
0.6::bronc_yes :- smoke_yes.
0.7::bronc_no :- smoke_no.
1.0::either_yes :- lung_no,tub_yes.
1.0::either_no :- lung_no,tub_no.
0.98::xray_yes :- either_yes.
0.95::xray_no :- either_no.
0.9::dysp_yes :- bronc_yes,either_yes.
0.9::dysp_no :- bronc_no,either_no.
0::asia_yes :- asia_no.
0::smoke_yes :- smoke_no.
query(tub_yes).
query(tub_no).
query(lung_yes).
query(lung_no).
query(bronc_yes).
query(bronc_no).
query(either_yes).
query(either_no).
query(xray_yes).
query(xray_no).
query(dysp_yes).
query(dysp_no).