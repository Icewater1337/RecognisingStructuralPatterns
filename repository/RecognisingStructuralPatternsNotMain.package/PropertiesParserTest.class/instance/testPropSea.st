as yet unclassified
testPropSea
	self parse:'# Dies ist ein Kommentar
! Dies ist ebenfalls ein Kommentar
wenig Text
pi  = 3.14
lang:de
vieltext Dieser Text \
         läuft über zwei Zeilen.
paramText = Text mit dynamischem Parameter: {0}
unicodeText = Ein Smiley: \u263A'.
	self assert: result children size equals: 4.