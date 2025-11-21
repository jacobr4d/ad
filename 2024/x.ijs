ma =: > _1".&.> <"0 > LF splitstring 1!:1 <'x.txt'
inbounds =: {{ (*./ y >: 0) *. *./ y<: (#ma)-1 }}"1
neighbors =: {{(#~ inbounds) (_2 ]\ 0 1 1 0 0 _1 _1 0) +"_1 _ y }}"1
Ifany =: ^: (*@#@]) 
nextlevel =: {{ (#~ ((1+x)&=)@:(ma&({~))@:<) ~. ; neighbors&.> <"1 y }} Ifany
indices =: (4 $. [: $. ])"2
score =: {{ # > nextlevel&.>/ (<"0 i. _9) , < ,: y }}"1
+/ score indices 0 = ma