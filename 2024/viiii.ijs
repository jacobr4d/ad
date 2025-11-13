m =: _1 ". _ 1$ 1!:1 <'viiii.txt'
labels =: (# m) {. ,/ _1 ,.~ i. # m
blocks =: m # labels
+/ (* i.@:#) (|. b #~ _1 ~: b) (I. _1 = a)} a =: n {. blocks [ b =: n }. blocks [ n =: +/ _1 ~: blocks NB. part i 6356833654075
