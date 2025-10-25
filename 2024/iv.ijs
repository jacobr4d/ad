text=: text=: 1!:1 <'iv.txt'
m=: > LF splitstring text
NB. 8 directions U,D, R,L NE,SW, SE,NW = rows and NEdiags x 4 flips
NB. rows are easy; ], need to generate NE diags; ]/.
NB. need to generate flips; |:@|.
+/ +/ 'XMAS' E."1 ,/ (, ]/."2) |:@|.^:0 1 2 3 m