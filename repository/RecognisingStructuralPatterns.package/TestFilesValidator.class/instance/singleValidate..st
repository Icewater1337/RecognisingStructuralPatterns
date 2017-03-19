as yet unclassified
singleValidate: aString
|files correctParser|
self assert: (aString ='XML')|(aString ='CSS') | (aString ='JSON').

(aString ='XML')
ifTrue:[files:= FolderReaderLengthOrderer new readFiles:'exampleFiles/xml'.
	correctParser:= XMLFactoryParser new.
	].
(aString ='CSS')
ifTrue:[files:= FolderReaderLengthOrderer new readFiles:'exampleFiles/css'.
	correctParser:= CssFactoryParser new.].
(aString ='JSON')
ifTrue:[files:= FolderReaderLengthOrderer new readFiles:'exampleFiles/json'.
	correctParser:= JsonFactoryParser new.].

	^self singleValidate: files correctParser: correctParser.