as yet unclassified
getRecall: result
"how many % of the corret results were recognized?"
| correctResultSize correctElements |

correctResultSize := correctResult size.
correctElements:= 0.
result do: [  :res | (correctResult indexOf:res ifAbsent: 0) == 0
	ifTrue:[]
	ifFalse:[correctElements := correctElements +1]  ].

^ correctElements / correctResultSize.
