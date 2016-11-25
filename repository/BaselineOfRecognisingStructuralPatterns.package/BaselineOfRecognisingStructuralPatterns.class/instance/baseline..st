baselines
baseline: spec
	<baseline>
	spec for: #common do: [ 
		spec blessing: #'baseline'.
		spec description:' RecognisingStrucutralPatterns'.
		spec repository:'github://Icewater1337/RecognisingStructuralPatterns:master'.
		spec
			package:'RecognisingStructuralPatterns';
			package:'RecognisingStructuralPatternsNotMain' with: [ spec requires: #('RecognisingStructuralPatterns') ].
			
		].