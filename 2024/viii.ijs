m =: > LF splitstring 1!:1 <'viii.txt'
n =: # m
anum =: 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
indices =: (4 $. [: $. ])"2                         NB. rank 2
pairs =: ,/@:(,:/"(_1 _2) _1 ]\. ])"2               NB. rank 2
antinodes =: (({. - {: - {.) ,: ({: - {. - {:))"2   NB. rank 2
inbounds =: ([: *./ >:&0 *. <:&(n-1))"1             NB. rank 1
+/ inbounds ~. ,/ antinodes ; pairs@:indices&.> <"2 anum =/ m NB. part i
antinodes2 =: ({. +"1 ((-n)+i. 2*n) *"0 _ [: (% +./)^:(*./@:(0&=)) [: -/ ])"2
+/ inbounds ~. ,/ antinodes2 ; pairs@:indices&.> <"2 anum =/ m NB. part ii