NB. part a
'a b'=: (LF,LF) splitstring text=: 1!:1 <'v.txt'
edges=: ". > '|' splitstring"1  > LF splitstring a
seqs=: ".&.> LF splitstring b
works=: > edges&(*./@:((+./"1)@:-.@:e. +. (<:/"1)@:i.~))&.> seqs
middleofodd=: ({~ (%&2)@:(_1&+)@:#)
+/ > middleofodd&.> works # seqs