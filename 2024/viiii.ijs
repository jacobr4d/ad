m =: _1 ". _ 1$ 1!:1 <'viiii.txt'
blo =: m # (# m) {. ,/ (i. # m) ,. _1
n =: +/ _1 ~: blo
newblo =: (|. (#~ _1&~:) n }. blo) (I. _1 = n {. blo)} n {. blo
checksum =: +/@:(* i.@:#)
checksum newblo     NB. part i 6356833654075
data =: (#~ _1 ~: {."1) ((# m) {. ,/ (i. # m) ,. _1) ,. m
trytoshift =: {{ id (ib+i.f)} _1 (ia+i.f)} y [ ib =: ia <. <./ I. (f$_1) E. y [ ia =: {. I. (f$id) E. y [ id =: {. x [ f =: {: x }}
newblo =: 0 (I. _1 = newblo)} newblo =: > trytoshift&.>/ (<"1 data) , <blo
checksum newblo     NB. part ii 6389911791746
