0.42313152::pKC_LOW.
0.4816392::pKC_AVG.
0.09522928::pKC_HIGH.
0.81213356::plcg_LOW.
0.08337962::plcg_AVG.
0.10448682::plcg_HIGH.
0.6721176592::akt_LOW :- erk_LOW,pKA_LOW.
0.3277794919::akt_AVG :- erk_LOW,pKA_LOW.
0.0001028489::akt_HIGH :- erk_LOW,pKA_LOW.
0.85051343::erk_LOW :- mek_LOW,pKA_LOW.
0.13872433::erk_AVG :- mek_LOW,pKA_LOW.
0.01076224::erk_HIGH :- mek_LOW,pKA_LOW.
0.2899262::jnk_LOW :- pKA_LOW,pKC_LOW.
0.2457641::jnk_AVG :- pKA_LOW,pKC_LOW.
0.4643097::jnk_HIGH :- pKA_LOW,pKC_LOW.
0.7451772095::mek_LOW :- pKA_LOW,pKC_LOW,raf_LOW.
0.2545984747::mek_AVG :- pKA_LOW,pKC_LOW,raf_LOW.
0.0002243158::mek_HIGH :- pKA_LOW,pKC_LOW,raf_LOW.
0.30691159::p38_LOW :- pKA_LOW,pKC_LOW.
0.06458648::p38_AVG :- pKA_LOW,pKC_LOW.
0.62850193::p38_HIGH :- pKA_LOW,pKC_LOW.
0.9967915::pIP2_LOW :- pIP3_LOW,plcg_LOW.
0.003169817::pIP2_AVG :- pIP3_LOW,plcg_LOW.
0.00003865631::pIP2_HIGH :- pIP3_LOW,plcg_LOW.
0.218431::pIP3_LOW :- plcg_LOW.
0.4473238::pIP3_AVG :- plcg_LOW.
0.3342453::pIP3_HIGH :- plcg_LOW.
0.3864255::pKA_LOW :- pKC_LOW.
0.3794243::pKA_AVG :- pKC_LOW.
0.2341501::pKA_HIGH :- pKC_LOW.
0.06232176::raf_LOW :- pKA_LOW,pKC_LOW.
0.14724878::raf_AVG :- pKA_LOW,pKC_LOW.
0.79042946::raf_HIGH :- pKA_LOW,pKC_LOW.
0::pKC_LOW :- pKC_AVG.
0::pKC_LOW :- pKC_HIGH.
0::plcg_LOW :- plcg_AVG.
0::plcg_LOW :- plcg_HIGH.
query(akt_LOW).
query(akt_AVG).
query(akt_HIGH).
query(erk_LOW).
query(erk_AVG).
query(erk_HIGH).
query(jnk_LOW).
query(jnk_AVG).
query(jnk_HIGH).
query(mek_LOW).
query(mek_AVG).
query(mek_HIGH).
query(p38_LOW).
query(p38_AVG).
query(p38_HIGH).
query(pIP2_LOW).
query(pIP2_AVG).
query(pIP2_HIGH).
query(pIP3_LOW).
query(pIP3_AVG).
query(pIP3_HIGH).
query(pKA_LOW).
query(pKA_AVG).
query(pKA_HIGH).
query(raf_LOW).
query(raf_AVG).
query(raf_HIGH).