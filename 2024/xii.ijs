ma =: > LF splitstring 1!:1 <'xii.txt'
out =: {{ -. *./ (y >: 0) , y <: (# mm)-1 }}"1
neigh =: {{ (_2 ]\ 0 1 1 0 0 _1 _1 0) +"_1 _ y }}"1
seen =: ($ ma)$ 0
dfs =: {{
    if. out y do. 0 1
    elseif. x ~: (<y) { ma do. 0 1
    elseif. (<y) { seen do. 0 0
    else.
        seen =: 1 (<y)} seen
        1 0 + +/ x dfs neigh y
    end.
}}"0 1
NB. +/ */"1 (, mm) dfs ,/ (i. nn) ,"0/ i. nn NB. part i 1549354
ifany =: ^:(*@#@])
neigh =: {{ (_2 ]\ 0 1 1 0 0 _1 _1 0) +"_1 _ y }}"1
ring =: {{ (_2 ]\ _1 0 _1 1 0 1 1 1 1 0 1 _1 0 _1 _1 _1 _1 0)+"_1 _ y }}"1
inside =: {{ *./ (0 <: y), y <: (# ma)-1 }}"1
indexornull =: {{ {{' '}}`(({&ma)@:<)@.inside y }}"1
corners =: {{ +/ (_3 ]\ 0 0 0 0 1 0 1 0 1)e.~ (0 2 4 6){ 3 ]\ ((<y){ma)= indexornull ring y }}
seen =: ($ ma)$ 0
dfsii =: {{
    seen =: 1 (<y)} seen [ st =: (-. (<y) { seen) {. ,: y [ area =: 0 [ sides =: 0
    while. # st do. st =: st, vv [ seen =: 1 (<vv)} seen [ vv =: (#~ ((<uu){ma)&=@:({&ma)@:<)ifany (#~ -.@:({&seen)@:<)ifany (#~ inside) neigh uu [ sides =: sides+ corners uu [ area =: area+ 1 [ st =: }: st [ uu =: {: st end.
    area , sides
}}"1
dfsiii =: {{ if. -. inside y do. 0 0 elseif. x~: (<y){ ma do. 0 0 elseif. (<y){ seen do. 0 0 else. (1, corners y)+ +/ x dfsiii neigh y [ seen =: 1(<y)} seen end. }}"0 1
NB. +/ */"1 dfsiii ,/ > { ;~ i. # ma                    NB. part ii 937032
NB. +/ */"1 (, ma) dfsiii ,/ (i. # ma) ,"0/ i. # ma
