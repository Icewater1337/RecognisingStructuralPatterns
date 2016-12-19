sorting
sortFilesByLength: files
	
	^files sorted: [ :eltA :eltB |
		eltA size < eltB size ].