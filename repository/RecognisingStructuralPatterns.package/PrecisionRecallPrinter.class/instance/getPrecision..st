as yet unclassified
getPrecision: result
"how many of the found results were relevant.  "
| resultSize correctElements |
resultSize := result size.
correctElements:= 0.
result do: [  :res | (correctResult indexOf:res ifAbsent: 0) == 0
	ifTrue:[]
	ifFalse:[correctElements := correctElements +1]  ].

^ correctElements / resultSize.

