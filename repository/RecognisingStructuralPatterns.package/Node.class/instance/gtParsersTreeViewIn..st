as yet unclassified
gtParsersTreeViewIn: composite
	<gtInspectorPresentationOrder: 40>

	composite tree
			title: 'Parsers Tree';
			children: [:n | n children ];
			format: [:n| n parserFactory class name ];
			shouldExpandToLevel: 6