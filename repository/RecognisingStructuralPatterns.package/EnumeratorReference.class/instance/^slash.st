as yet unclassified
/ anotherEnumerator
	| firstEnum secondEnum|
	
	firstEnum := self receiver perform: self selector.
	secondEnum:= anotherEnumerator perform: anotherEnumerator selector.
	^ { firstEnum / secondEnum }
		