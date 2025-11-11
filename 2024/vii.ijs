m =: (_1 ". [: ; ':' splitstring ])&.> LF splitstring 1!:1 <'vii.txt'
+/ ({. ([ * e.) ~.@:(+ , *)/@:|.@:}.)@> m NB. part a
cat =: ".@:,~&":"0
+/ ({. ([ * e.) ~.@:(+ , * , cat)/@:|.@:}.)@> m NB. part b