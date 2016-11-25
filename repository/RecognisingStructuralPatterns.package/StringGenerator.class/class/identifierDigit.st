as yet unclassified
identifierDigit
	^ (self new)
		begin: #digit asParser and;
		end: (#word asParser / #letter asParser) not;
		escape: PPFailingParser new;
		generateParser