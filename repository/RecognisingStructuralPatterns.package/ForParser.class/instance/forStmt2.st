statements
forStmt2
	^ for, in negate star, in, do negate star / newline negate star, do / newline , end negate star, end 
	

"for variable [, variable ...] in expression [do]
   code
end"