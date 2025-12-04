NB. sring manipulation (slow)
NB. p =: (_1&".)@:>@:('-'&splitstring)&.> ','splitstring 1!:1 <'ii.txt'
NB. opts =: ({. + [: i. 1 + {: - {.)&.> p
NB. isspecial =: (({.~ -: }.~) <.@:(2&(%~))@:#)@:":"0
NB. +/ +/@:((* isspecial)"0)@> opts     NB. part i 13919717792
NB. isspecialii =: (+./)@:((*./)@:(-:"_1 _ {.)@>)@:(([: - 1 + [: i. [: <. 2 %~ [: # ]) <@(]\) ])@:":"0
NB. +/ +/@:((* isspecialii)"0)@> opts   NB. part ii 14582313461
NB. precompute (faster)
ints =: _1". > '-'splitstring"1 > ','splitstring 1!:1 <'ii.txt'
catnums =: {{ <. y+ x* 10^ <. 1+ 10^. y }}
specials =: catnums~"0 ] 1+ i. 99999
<. +/ specials ([: +/ [ #~ ({.@:] <: [) *. ([ <: {:@:]))"1 1 ints NB. part i 13919717792
specialsii =: ~. ,/ catnums^:(1+ i. 10)~ ] 1+ i. 99999
<. +/ specialsii ([: +/ [ #~ ({.@:] <: [) *. ([ <: {:@:]))"1 1 ints NB. part ii 14582313461
