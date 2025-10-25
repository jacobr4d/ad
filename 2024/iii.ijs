load 'regex'
NB. part i
+/ */ |: _1&".@> te rxfrom~ ('mul\(([[:digit:]]{1,3}),([[:digit:]]{1,3})\)';1 2) rxmatches te=: 1!:1 <'iii.txt'
NB. part ii
text=: 1!:1 <'iii.txt'
ffill=: 0&(;@:(] <@(# # {. );.1~ 1 (0}) -.@=  )) NB. forward fill
mask=: 1<. 1+ ffill 1, }. ('do\(\)'&rxE - 'don''t\(\)'&rxE) text
+/ */ |: _1&".@> (('mul\(([[:digit:]]{1,3}),([[:digit:]]{1,3})\)';1 2)&rxmatches rxfrom ]) mask # text