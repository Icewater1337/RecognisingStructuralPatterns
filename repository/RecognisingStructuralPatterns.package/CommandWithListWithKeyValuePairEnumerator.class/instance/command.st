as yet unclassified
command
	^ (CommandEnumerator new)
		keys: {StringGenerator identifier};
		arguments: list;
		yourself