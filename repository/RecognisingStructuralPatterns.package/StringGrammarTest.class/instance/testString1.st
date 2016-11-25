as yet unclassified
testString1
	self parse:'"hallovelonasdhjkhasd 123h jh213 j"' rule:#string1.
	self parse:'"hallovelonasdhjkhasd ""123h jh213 j"' rule:#string1.
	self parse:'"hallovelonasdhjkhasd \" 123h jh213 j"' rule:#string1