tests
testValidate
|correctParser validator set result|	
	correctParser:= XMLFactoryParser new start.
	validator:= SetValidator new.
	result:= OrderedCollection new.
	
	set:= OrderedCollection new.
	set add:'<a>b </a>'.
	set add:'<breakfast-menu>
					<food>
						<name>Belgian Waffles</name>
						<price>$5.95</price>
						<description>
							two of our famous Belgian Waffles with plenty of real 							maple syrup
						</description>
						<calories>650</calories>
					</food>
					<food>
						<name>Strawberry Belgian Waffles</name>
						<price>$7.95</price>
						<description>
							light Belgian waffles covered with strawberrys and 							whipped cream
						</description>
						<calories>900</calories>
					</food>
				</breakfast-menu>
				<b>c</b>'.

	result:= validator validate: set correctParser:correctParser.
		
	self assert: (result isKindOf: OrderedCollection).
	self assert: (result allSatisfy: [ :e | e isKindOf: ResultNode ]).
	self assert: ((result at:1)  precision closeTo: 1).
	self assert: ((result at:1) recall closeTo:1).
	self assert: ((result at:1) f1score closeTo:1).

