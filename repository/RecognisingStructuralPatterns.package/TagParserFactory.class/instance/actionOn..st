generating
actionOn: parser
	^ parser ==> [ :e | 
	(Element new)
		name: e first second inputValue;
		children: e second;
		isTag:true;
		parserFactory: self;
		yourself.
		
	]
						
			" had to add this, because somehow an array with nil and raw text gets returned when it parses asd( since (generator selfReference not, NilGenerator whatever ) /((generator selfReference)star).) doesnt consume the input"
			
						