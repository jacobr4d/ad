NB. part a
n =: # m =: >LF splitstring text =: 1!:1 <'vi.txt'
next =: (n-1) <. 0 >. 3&{:: + (4 2$ _1 0 0 1 1 0 0 _1) {~ 2&{:: NB. next =: 4 : '(n-1)<. 0>. y+ x{ 4 2$ _1 0 0 1 1 0 0 _1'
blocked =: '#' = 0&{:: {~ [: < next
move =: ({{'X'}}@:[`]`(0 {:: [)} 3&{) ; (1:`]`(1 {:: [)} [: < [: ; 2 3&{) ; (4 | blocked + 2&{::) ; next`(3&{::)@.blocked NB. move =: {{ ('X' (<ij)} ma); (1 (<di,ij)} se); (4| bl+ di); di next^:(-. bl =: '#'= ma {~ <di next ij) ij [ 'ma se di ij' =: y }}
unseen =: [: -. 1&{:: {~ [: < [: ; 2 3&{ NB. seen =: {{ (<di,ij){ se [ 'ma se di ij' =: y }}
+/^:_ +./ > 1{ sim1 =: move^:unseen^:_ ma0 ; (se0 =: 0$~ 4,n,n) ; 0 ; ij0 =: {. 4$. $. '^'= ma0 =: m
NB. part b
isnotontheedge =: [: -. [: +./ e.&(0,n-1)
createsloop =: [: isnotontheedge [: 3&{:: [: move^:unseen^:_ [: |. ij0 ; 0 ; se0 ; ] NB. createsloop =: 3 : '-. +./ ((n-1)&= +. 0&=) > {: move^:unseen^:_ y; se0; 0; ij0'
blockonesquare =: ma0 {{'#'}}@:]`(<@:])`[} ]
pathstotryblocking =: 4$. $. 'X'= > {. sim1
+/ createsloop"2 blockonesquare"1 pathstotryblocking
