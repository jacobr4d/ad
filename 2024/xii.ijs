mm =: > LF splitstring 1!:1 <'xii.txt'
nn =: # mm
out =: {{ -. *./ (y >: 0) , y <: nn-1 }}
neigh =: {{ (_2 ]\ 0 1 1 0 0 _1 _1 0) +"_1 _ y }}"1
seen =: 0$~ nn,nn
dfs =: {{
    if. out y do. 0 1
    elseif. x ~: (<y) { mm do. 0 1
    elseif. (<y) { seen do. 0 0
    else.
        seen =: 1 (<y)} seen
        1 0 + +/ x dfs neigh y
    end.
}}"0 1
+/ */"1 (, mm) dfs ,/ (i. nn) ,"0/ i. nn NB. part i 1549354