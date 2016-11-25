as yet unclassified
testCommand
	| string |
		
	string:= '@article{Sh2,
author = {Shelah, Saharon},
amssubject = {(05.04)},
journal = {Journal of Combinatorial Theory},
review = {MR 39-2652},
pages = {298--300},
title = {{Note on a min-max problem of Leo Moser}},
volume = {6},
year = {1969},
}'.
		
	self assertEnumeration:#command anyParses:string.
	
	