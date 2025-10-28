'a b' =: (LF,LF) splitstring text=: 1!:1 <'v.txt'
edges =: ". > '|' splitstring"1  > LF splitstring a
seqs =: ".&.> LF splitstring b
middleofodd =: ({~ (%&2)@:(_1&+)@:#)
NB. part a
works =: > edges&(*./@:((+./"1)@:-.@:e. +. (<:/"1)@:i.~))&.> seqs
+/ > middleofodd&.> works # seqs
NB. part b
nodes =: /:~ ~. (; seqs) , (; edges)
tsort =: 3 : 0
    s =: y
    e =: |: (*./ |: edges e. s) # edges
    neigh =: ((= {.) # {:@:])&e
    indeg =: +/ s ="_ 0 {: e
    S =: (0= indeg) # s
    out =: 0$0
    while. #S do.
        u =: {: S
        S =: }: S
        out =: out , u
        iv =: s i. v=: neigh u
        indeg =: (_1+ iv { indeg) iv} indeg
        S =: S , (I. 0= iv { indeg) { v
    end.
    out
)
+/ > middleofodd&.> (#~ seqs&~:) tsort&.> seqs