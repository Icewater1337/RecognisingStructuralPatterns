elements
comment
	^( commentBlock / entry negate ) star


" a comment is either everything thats before a @stuff{} block or something thats in a @Comment{} block, but no @ should be in there"