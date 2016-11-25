as yet unclassified
testForStmt3
	self parse: 'for i = 1 to itemCount
        A(i) = int(rnd(1) * 100)
    next i' rule: #forStmt3.
	
