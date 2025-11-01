NB. part a
n =: # m =: >LF splitstring text =: 1!:1 <'vi.txt'
next =: dyad define
    (n-1)<. 0>. y+ x{ 4 2$ _1 0 0 1 1 0 0 _1
)
seen =: monad define NB. has (d)irection,i,j been seen?; avoid infinite loop
    'se di ij' =: y
    (<di,ij) { se
)
move =: monad define
    'se di ij' =: y
    bl =: '#'= m {~ <di next ij NB. blocked
    (1 (<di,ij)} se); (4| bl+ di); di next^:(-. bl) ij
)
se =: 0$~ 4,n,n
di =: 0
ij =: (I. +/"1 '^'= m) , (I. +/ '^'= m)
+/ +/ +./ > {. move^:(-.@:seen)^:_ se; di; ij
NB. part b