NB. part a
ReadFile =: 1!:1
m =: _ 2 $ _1 ". (LF;' ') stringreplace ReadFile < 'i.txt'
+/ | -/ /:~"1 |: m                      

NB. part b
+/ ({. |: m)* +/"1 ({. ="0 1 {:) |: m
+/ ({. |: m)* +/ ({. ="1 0 {:) |: m
+/ ({. * +/@:({. ="1 0 {:)) |: m
+/ ({. * +/@:(="1 0/)) |: m
