as yet unclassified
testRun
	self parse:'@article{Sh:2,
author = {Shelah, Saharon},
ams-subject = {(05.04)},
journal = {Journal of Combinatorial Theory},
review = {MR 39-2652},
pages = {298--300},
title = {{Note on a min-max problem of Leo Moser}},
volume = {6},
year = {1969},
},

@article{Sh:3,
author = {Shelah, Saharon},
ams-subject = {(02.50)},
journal = {Annals of Mathematical Logic},
review = {MR 44-2593},
pages = {69--118},
title = {{Finite diagrams stable in power}},
volume = {2},
year = {1970},
},

@article{Sh:4,
author = {Shelah, Saharon},
ams-subject = {(02.50)},
journal = {Journal of Symbolic Logic},
review = {MR 44-52},
pages = {73--82},
title = {{On theories $T$ categorical in $|T|$}},
volume = {35},
year = {1970},
},'.
	self assert: result children size == 3.
	self assert: (result children allSatisfy: [ :e | e isKindOf: Element ]) 