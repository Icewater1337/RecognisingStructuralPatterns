accessing
string
	^ (BruteForceStringGenerator new)
		begin:#('<?' $<);
		end:#('?>' '/>');
		yourself