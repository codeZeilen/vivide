updating
updateHeaderText

	| scriptsSummary objectsSummary |
	scriptsSummary := (ViLabelService doObject: self pane) asString.
	
	self flag: #noStreamsSupport. "mt: Streams do not have a size..."
	
	"Append summary for objects if there is only one pane/script."
	objectsSummary := self objects size = 1
		ifTrue: ['{1} ({2})' format: {
			(ViLabelService doObject: self objects first) asString.
			(ViObjectOriginService doObject: self objects first) asString}]
		ifFalse: [((self objects
			collect: [:object | (ViLabelService doObject: object) asString])
			ifEmpty: [#('')])
			reduce: [:oneliner :label | oneliner, ', ', label]].
	
	self headerText: (objectsSummary
		ifEmpty: [scriptsSummary]
		ifNotEmpty: ['{1}: {2}' format: {scriptsSummary. objectsSummary}]).