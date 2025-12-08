ints =: _1". > '-'splitstring"1 > LF splitstring > {. (LF,LF) splitstring 1!:1 <'v.txt'
ings =: _1". > LF splitstring  > {: (LF,LF) splitstring 1!:1 <'v.txt'
+/ ings +./@:((({:@:] >: [) *. {.@:] <: [)"_ _1)"_1 _ ints NB. part i 698
intsii =: {{
    out =: 0 2$0
    for_int. /:~ ints do.
        if. 0= # out do.
            out =: out , int
        elseif. ({: {: out) < {. int do.
            out =: out , int
        else.
            out =: (}: out) , ({. {: out) , ({: {: out) >. {: int
        end.
    end.
    out
}}''
+/ >:@:-~/"1 intsii NB. part ii 352807801032167