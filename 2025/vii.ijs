ma =: > LF splitstring 1!:1 <'vii.txt'
LoopWithInitial =: 2 : 'u&.>/\.&.(,&(<v))&.|.&.(<"_1)'
out =: 0
{{ '^'(I. '^'=x)} '|'(I. '|'=y)} '|'((#~ (0&<: *. <&(# {. ma))) ~. ,/ _1 1+"0 _ I. ('^'= x) *. '|'= y)} '|'(I. 'S'=y)} x [ (out =: out + # I. ('^'= x) *. '|'= y) }} LoopWithInitial ((# {. ma)$'.') ma NB. x is the new one
out NB. part i 1524
+/ {: {{ 0(I. '^'=x)} y+ 1(I. 'S'=x)} (+ 0&,@:}: + 0&(,~)@:}.) ('^'=x) * y }} LoopWithInitial ((# {. ma)$0) ma
NB. part ii 32982105837605