as yet unclassified
getRecall: resu
"how many % of the corret results were recognized?"
| correctResultSize correctElements |

correctResultSize := correctResult size.
correctElements:= 0.
resu do: [  :res | (correctResult indexOf:res ifAbsent: 0) == 0
	ifTrue:[]
	ifFalse:[correctElements := correctElements +1]  ].

^ ((correctElements / correctResultSize) asFloat round:3).
