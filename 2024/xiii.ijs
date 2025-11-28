NB. satsify     94a + 22b = 840, 
NB.             34a + 67b = 5400
NB. or          94 22   a   =   840
NB.             34 67   b   =   5400
NB. minimize    3a + b
NB. linear programming problem, but I'm lazy and the constraints are small
ma =: _ 3 2 $ , ".@> t rxfrom~ '[[:digit:]]+'rxmatches t=: 1!:1 <'xiii.txt'
+/ {{ ({&(/:~c))`(0:)@.(10201&=) ({: y)i.~ (|: 2{. y)&(+/ . *)"1 t=: t/: c=: (+/"1)@:(3 1&*"1) t=: > , { ;~ i. 101 }}"2 ma NB. part i 29517