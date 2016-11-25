as yet unclassified
testRun
	self
		parse:
			'
@String {firstname = "Xavier"}

s

@Comment{steward03,
  asd
}

@Book{name,
	stuff = "stuff",
	stuffa = "ssud2" }
	
	sadcomment

@String {firstname = "Xavier"}
'
		rule: #run