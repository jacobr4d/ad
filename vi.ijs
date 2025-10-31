NB. part a
n =: # m =: >LF splitstring text =: 1!:1 <'vi.txt'
dirs =: 4 2 $ _1 0 0 1 1 0 0 _1
next =: (dirs&({~)@:{. + }.)
nextinsq =: ((n-1)&<.)@:(0&>.)@:next
nextstate =: (((4&|)@:({.@:[ + ]) , (_2&{.)@:(nextinsq@:]^:(-.@:[)~)) ('#'&=)@:(m&({~))@:<@:nextinsq)
seen =: (4,n,n) $ 0 NB. d x i x j
state =: 0 , (I. +/"1 '^'= m) , (I. +/ '^'= m)
seen =: 1 (< state)} seen
sim =: 3 : 0
    while. 0= (< nextstate state){ seen do.
        state =: nextstate state
        seen =: 1 (< state)} seen
    end.
)
sim ''
+/ +/ +./ seen
NB. part b