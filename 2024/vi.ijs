NB. part a
n =: # m =: >LF splitstring text =: 1!:1 <'vi.txt'
next =: ((n-1)&<.)@:(0&>.)@:((4 2 $ _1 0 0 1 1 0 0 _1)&({~)@:{. + }.) NB. (d)irection,i,j |-> i',j'   move in direction of d but stay in bounds
move =: (1&([`({:@:])`(>@:{.@:])}) ; (('#'&=)@:(m&({~))@:(next&.>)@:{: { (({.@:>@:{: , next@:>@:{:) ,: ((4&|)@:(1&+)@:{.@:>@:{: , }.@:>@:{:)))) NB. seen,dij |-> seen',dij' (mark dij as seen, and move dij one step
+/ +/ +./ > {. move^:(-.@:({: { (>@:{.)))^:_ (seen0 =: (4,n,n) $ 0) ; dij0 =: 0, (I. +/"1 '^'= m) , (I. +/ '^'= m)
