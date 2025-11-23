Ifany =: ^: (*@#@]) 
indices =: (4 $. [: $. ])"2
ma =: > _1".&.> <"0 > LF splitstring 1!:1 <'x.txt'
inbounds =: {{ (*./ y >: 0) *. *./ y<: (#ma)-1 }}"1
neighbors =: {{(#~ inbounds) (_2 ]\ 0 1 1 0 0 _1 _1 0) +"_1 _ y }}"1
nextlevel =: {{ (#~ ((1+x)&=)@:(ma&({~))@:<) ~. ; neighbors&.> <"1 y }} Ifany
score =: {{ # > nextlevel&.>/ (<"0 i. _9) , < ,: y }}"1
+/ score indices 0 = ma NB. part i 512
nextlevelii =: {{ (#~ ((1+x)&=)@:(ma&({~))@:<) ; neighbors&.> <"1 y }} Ifany
scoreii =: {{ # > nextlevelii&.>/ (<"0 i. _9) , < ,: y }}"1
+/ scoreii indices 0 = ma NB. part ii 1045
