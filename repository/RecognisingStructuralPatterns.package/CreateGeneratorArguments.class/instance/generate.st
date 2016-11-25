as yet unclassified
generate
|parsers|
parsers:= OrderedCollection new.
	(args do: [ :arg | parsers add:(arg asParser)]).
	
	^ parsers