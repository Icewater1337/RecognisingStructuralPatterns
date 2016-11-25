as yet unclassified
testEntry
	self parse:'@article{Sh:2,
author = {Shelah, Saharon},
ams-subject = {(05.04)},
journal = {Journal of Combinatorial Theory},
review = {MR 39-2652},
pages = {298--300},
title = {{Note on a min-max problem of Leo Moser}},
volume = {6},
year = {1969},
},'rule:#entry.
	self assert: result children size == 8.
	self assert: (result isKindOf:Element).
	self assert: (result children allSatisfy: [ :e | e isKindOf: RawText ]) 