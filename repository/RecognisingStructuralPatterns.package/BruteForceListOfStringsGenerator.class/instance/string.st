as yet unclassified
string
	^ (BruteForceStringGenerator new)
		begin: #($" $');
		end: #($" $');
		escape: #('"' '''')
		yourself