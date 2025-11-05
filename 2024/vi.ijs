NB. part a
m =: >LF splitstring text =: 1!:1 <'vi.txt'
n =: # m
next =: 4 : '(n-1)<. 0>. y+ x{ 4 2$ _1 0 0 1 1 0 0 _1'  NB. (d)irection next i j
seen =: 3 : '(<di,ij){ se [ ''ma se di ij'' =: y'       NB. has (d)irection,i,j been seen?; avoid infinite loop
move =: 3 : '(''X'' (<ij)} ma); (1 (<di,ij)} se); (4| bl+ di); di next^:(-. bl =: ''#''= ma {~ <di next ij) ij [ ''ma se di ij'' =: y '
+/+/+./ > 1{ move^:(-.@:seen)^:_ ma0; (se0 =: 0$~ 4,n,n); 0; (ij0 =: {. 4$. $. '^'= ma0 =: m)
NB. part b
createsloop =: 3 : '-. +./ ((n-1)&= +. 0&=) > {: move^:(-.@:seen)^:_ y; se0; 0; ij0'
blockonepath =: 3 : '''#'' (<y)} ma0'
pathstotryblocking =: 4$. $. 'X'= > {. move^:(-.@:seen)^:_ ma0; se0; 0; ij0
+/ createsloop"2 blockonepath"1 pathstotryblocking      NB. takes about a minute