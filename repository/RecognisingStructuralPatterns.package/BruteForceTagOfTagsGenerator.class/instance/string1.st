accessing
string1
	^ (BruteForceStringGenerator new)
		begin:#('<?' $<);
		end:#('?>' '/>');
		yourself