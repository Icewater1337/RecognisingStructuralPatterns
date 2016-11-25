as yet unclassified
string
	^ (StringEnumerator new)
		begin: #($" $');
		end: #($" $');
		escape: #('"' '''')
		yourself