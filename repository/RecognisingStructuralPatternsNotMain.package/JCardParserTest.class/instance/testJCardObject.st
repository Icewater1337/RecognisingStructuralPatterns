as yet unclassified
testJCardObject
	self parse:' ["version", {}, "text", "4.0"]' rule:#jCardObject.
	self parse:' ["adr",
      {"label":"100 Waters Edge\nBaytown, LA 30314\nUnited States of America", "type":"work", "pref":"1"},
      "text",
      ["", "", "100 Waters Edge", "Baytown", "LA", "30314", "United States of America"]
    ]' rule:#jCardObject