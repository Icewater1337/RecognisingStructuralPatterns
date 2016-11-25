accessing
string
	^ (BruteForceStringGenerator new)
		begin: #($" $');
		end: #($" $');
		escape: #('\');
		yourself