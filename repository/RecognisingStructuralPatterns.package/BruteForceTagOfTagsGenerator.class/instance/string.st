accessing
string
	^ (BruteForceStringGenerator new)
		begins:#('<?' $< '<!');
		ends:#('?>' '/>' '>');
		yourself