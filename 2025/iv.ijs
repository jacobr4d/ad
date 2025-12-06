ma =: > LF splitstring 1!:1 <'iv.txt'
neigh =: +"(_ _1)&(_2]\ _1 _1 _1 0 _1 1 0 1 1 1 1 0 1 _1 0 _1)"1
inside =: ([: *./ (0 <: ]) *. ] < #@:[ , #@:{.@:[)"2 1
indexornull =: ({{' ' [ x [ y}}`([ {~ [: < ])@.inside)"2 1
movable =: (('@' = indexornull) *. 4 > [: +/ '@' = [ indexornull [: neigh ])"2 1
idx =: ,/ (i. #ma) ,"_ 0"0 _ i. # {. ma
+/ ma movable idx               NB. part i 1351
maii =: ('.' [`([: < idx #~ idx movable~ ])} ])^:_ ma
+/ +/ ('@'= ma) - '@'= maii     NB. part ii 
NB. try with frames next 