load 'regex'
+/ */ |: _1&".@> te rxfrom~ ('mul\(([[:digit:]]{1,3}),([[:digit:]]{1,3})\)';1 2) rxmatches te=: 1!:1 < 'iii.txt'
