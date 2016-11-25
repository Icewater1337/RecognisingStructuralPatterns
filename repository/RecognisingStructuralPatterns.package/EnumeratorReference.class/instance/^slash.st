as yet unclassified
/ anotherEnumerator
	| firstEnum secondEnum|
	self halt.
	firstEnum := self receiver perform: self selector.
	secondEnum:= anotherEnumerator perform: anotherEnumerator selector.
	^ { firstEnum / secondEnum }
		