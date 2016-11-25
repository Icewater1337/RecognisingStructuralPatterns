as yet unclassified
command
	^ (CommandEnumerator new)
		keys: {NilGenerator new};
		arguments: list ;
		yourself