as yet unclassified
generateEscapeArr: begin
|escapeArr|
escapeArr:= OrderedCollection new.
	begin do: [ :elt |  escapeArr add: elt,elt. escapeArr add:'\',elt].
	^ escapeArr