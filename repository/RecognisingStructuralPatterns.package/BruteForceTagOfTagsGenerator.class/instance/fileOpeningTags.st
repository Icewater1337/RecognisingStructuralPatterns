accessing
fileOpeningTags
	^ (BruteForceStringGenerator new)
		begins:#('<?' $< '<!');
		ends:#('?>' '/>' '>');
		yourself