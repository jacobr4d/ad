NB. part a
n =: # m =: >LF splitstring text =: 1!:1 <'vi.txt'
next =: ((n-1)&<.)@:(0&>.)@:((4 2 $ _1 0 0 1 1 0 0 _1)&({~)@:{. + }.)   NB. d,i,j |-> ii,jj, move in direction of d but stay in bounds
move =: (1&([`({:@:])`(>@:{.@:])}) ; (('#'&=)@:(m&({~))@:(next&.>)@:{: { (({.@:>@:{: , next@:>@:{:) ,: ((4&|)@:(1&+)@:{.@:>@:{: , }.@:>@:{:)))) NB. seen,dij |-> seen',dij' (seen now has seen dij, and dij has moved one step)
seen =: (4,n,n) $ 0 
dij =: 0, (I. +/"1 '^'= m) , (I. +/ '^'= m)
+/ +/ +./ > {. move^:(-.@:({: { (>@:{.)))^:_ seen ; dij
