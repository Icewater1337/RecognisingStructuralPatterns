accessing
string
	^ (BruteForceStringGenerator new)
		begins: #($" $');
		ends: #($" $');
		escapes: #('"');
		yourself