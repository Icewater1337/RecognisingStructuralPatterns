elements
letterNumber
	^ quotationMark trim, (quotationMark asParser negate star) flatten, quotationMark trim.
	
"#word asParser plus flatten trim"