as yet unclassified
singleValidate: files correctParser: correctParser
	|solution allSolutions|

	solution:= OrderedCollection new.
	allSolutions:= OrderedCollection new.
	"Remove base file"
	files removeAt:1.
	files do: [ :file | 
			|time suite|
			time:= [suite:= (ValidatorSuite new)
		correctResult: (correctParser parse: file);
		results: (ParserGeneratorExecutor new parseWithOrder:file);
		yourself.
		solution:= suite validate] timeToRun .


"set the index, so we know where the index of the element was in teh list of the presorted parsers."
			(1 to: solution size) do: [ :i |
				(solution at:i)indexOfParserInList:i.
								 ].
			solution removeAllSuchThat: [ :e |
				( e f1score isFloat)not ].
				solution := solution sorted: [ :a :b | a f1score > b f1score ].
			allSolutions add:(time->(solution at:1)).		
].

^allSolutions.
	