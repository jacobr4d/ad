NB. part a
n =: # m =: >LF splitstring text =: 1!:1 <'vi.txt'
dirs =: 4 2 $ _1 0 0 1 1 0 0 _1
next =: (dirs&({~)@:{. + }.)                NB. i,j |-> ii,jj
nextinsq =: ((n-1)&<.)@:(0&>.)@:next        NB. stay inside square
nextstate =: (((4&|)@:({.@:[ + ]) , (_2&{.)@:(nextinsq@:]^:(-.@:[)~)) ('#'&=)@:(m&({~))@:<@:nextinsq) NB. (d)irection,i,j |-> dd,ii,jj
st =: 0 , (I. +/"1 '^'= m) , (I. +/ '^'= m)
seen =: 1 (< st)} (4,n,n) $ 0 NB. seen (d,i,j)
sim =: 3 : 0
    while. 0= (< st =: nextstate st){ seen do. seen =: 1 (< st)} seen end.
)
sim ''
+/ +/ +./ seen
NB. part b
