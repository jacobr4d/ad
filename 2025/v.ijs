ints =: _1". > '-'splitstring"1 > LF splitstring > {. (LF,LF) splitstring 1!:1 <'v.txt'
ings =: _1". > LF splitstring  > {: (LF,LF) splitstring 1!:1 <'v.txt'
+/ ings +./@:((({:@:] >: [) *. {.@:] <: [)"_ _1)"_1 _ ints