NB. part a
'a b' =: (LF,LF) splitstring text=: 1!:1 <'v.txt'
edges =: ". > '|' splitstring"1  > LF splitstring a
seqs =: ".&.> LF splitstring b
works =: > edges&(*./@:((+./"1)@:-.@:e. +. (<:/"1)@:i.~))&.> seqs
middleofodd =: ({~ (%&2)@:(_1&+)@:#)
+/ > middleofodd&.> works # seqs
NB. part b
'a b'=: (LF,LF) splitstring text=: 1!:1 <'v.txt'
edges =: ". > '|' splitstring"1  > LF splitstring a
seqs =: ".&.> LF splitstring b
nodes =: /:~ ~. (; seqs) , (; edges)
order =: 3 : 0
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
        for_v. neigh u do.
            iv =: (s i. v)
            indeg =: (_1+ iv { indeg) iv} indeg
            if. 0= iv { indeg do.
                S =: S , iv { s
            end. 
        end.
    end.
)
middleofodd =: ({~ (%&2)@:(_1&+)@:#)
+/ > middleofodd&.> (#~ seqs&~:) order&.> seqs