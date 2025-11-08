m =: LF splitstring 1!:1 < 'ii.txt'
NB. part a 356
incordec =: (e.&_1 _2 _3 +.&(*./) e.&1 2 3)@:(2 -/\ ])"1
+/ > ([: incordec  _1 ". ])&.> m
NB. part b 413
+/ > ([: +./ [: incordec 1 ]\. _1 ". ])&.> m