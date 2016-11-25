as yet unclassified
testForStmt2
	self parse: 'for x in 1 .. 100
	random stuff
end' rule: #forStmt2.
	

"for variable [, variable ...] in expression [do]
   code
end"