0.01::burglary_True.
0.99::burglary_False.
0.02::earthquake_True.
0.98::earthquake_False.
0.009::burglary_True :- earthquake_False.
0::burglary_True :- burglary_False.
0.95::alarm_True :- burglary_True,earthquake_True.
0.999::alarm_False :- burglary_False,earthquake_False.
0.9::johnCalls_True :- alarm_True.
0.95::johnCalls_False :- alarm_False.
0.7::maryCalls_True :- alarm_True.
0.99::maryCalls_False :- alarm_False.
0::earthquake_True :- earthquake_False.
query(alarm_True).
query(alarm_False).
query(johnCalls_True).
query(johnCalls_False).
query(maryCalls_True).
query(maryCalls_False).