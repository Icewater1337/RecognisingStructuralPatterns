as yet unclassified
testStart
	self parse:'@article{uu, a=1, a=b}' rule:#start.
	
	self parse:'@article{Sh2,
author = {Shelah, Saharon},
amssubject = {(05.04)},
journal = {Journal of Combinatorial Theory},
review = {MR 39-2652},
pages = {298--300},
title = {{Note on a min-max problem of Leo Moser}},
volume = {6},
year = {1969},
}'.
	
	self parse:'@article{Sh2,
author = {Shelah, Saharon},
amssubject = {(05.04)},
journal = {Journal of Combinatorial Theory},
review = {MR 39-2652},
pages = {298--300},
title = {{Note on a min-max problem of Leo Moser}},
volume = {6},
year = {1969},
},

@article{Sh3,
author = {Shelah, Saharon},
ams-subject = {(02.50)},
journal = {Annals of Mathematical Logic},
review = {MR 44-2593},
pages = {69--118},
title = {{Finite diagrams stable in power}},
volume = {2},
year = {1970},
},

@article{Sh4,
author = {Shelah, Saharon},
amssubject = {(02.50)},
journal = {Journal of Symbolic Logic},
review = {MR 44-52},
pages = {73--82},
title = {{On theories $T$ categorical in $|T|$}},
volume = {35},
year = {1970},
}' rule:#start.