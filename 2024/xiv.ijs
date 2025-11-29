ma =: _ 4$ , ".@> t rxfrom~ '-?[[:digit:]]+'rxmatches t=: 1!:1 <'xiv.txt'
mm =: 101
nn =: 103
quad =: {{ ((2*({:y)>b)+ (1*({:y)<b)), (2*({.y)>a)+ (1*({.y)<a) [ b =: <.nn%2 [ a =: <.mm%2 }}"1
*/ #/.~ (#~ -.@:(0&e."1)) quad (_2&{. (mm,nn)&|@:+^:100 (2&{.))"1 ma
NB. part i 228457125 
{{
    for_c. i. 10000 do.
        tree =: |: {{ '@' (<y)} (mm,nn)$'.' }}"2 {{(_2&{. (mm,nn)&|@:+^:y (2&{.))"1 ma}}"0 ] c
        if. 0=1000|c do. 
            echo c
        end.
        if. '@@@@@@@' e. 7]\ , tree do.
            echo c
            echo tree
        end.
    end.
}} ''
NB. part ii 6493