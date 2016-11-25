as yet unclassified
testBeginEndElt
	self parse: '\begin{random}
stuff
\end{random}'rule:#beginEndElt.
	self fail: '\begin{ransfdom}
stuff
\end{random}' rule:#beginEndElt.