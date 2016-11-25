baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec package: 'RecognisingStructuralPatterns'.
			spec group: 'default' with: #('RecognisingStructuralPatterns') ]
