m=: > LF splitstring text=: 1!:1 <'iv.txt'
NB. part A
NB. 8 directions U,D, R,L NE,SW, SE,NW = rows and NEdiags x 4 flips
NB. rows are easy; ], need to generate NE diags; ]/.
NB. need to generate flips; |:@|.
+/ ,/ 'XMAS' E."1 ,/ (, ]/."2) |:@|.^:0 1 2 3 m

NB. part B
NB. want a way to generate all 3x3 submatricies
NB. a way to test 3x3 is an X-MAS
m=: > LF splitstring text=: 1!:1 <'iv.txt'
windows=: ,/"2 ,/ 3]\&.(|:"2) 3 ]\ m
+/ (4 6$'MASMASMASSAMSAMMASSAMSAM')&(e.~) 0 4 8 2 4 6{"1 windows