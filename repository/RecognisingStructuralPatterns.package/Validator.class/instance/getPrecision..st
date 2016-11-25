as yet unclassified
getPrecision: resul
"how many of the found results were relevant.  "
| resultSize correctElements |

	resultSize := resul size.
	correctElements:= 0.
	resul do: [  :res | (correctResult indexOf:res ifAbsent: 0) == 0
		ifTrue:[]
		ifFalse:[correctElements := correctElements +1]  ].

^(( correctElements / resultSize) asFloat round:3).
