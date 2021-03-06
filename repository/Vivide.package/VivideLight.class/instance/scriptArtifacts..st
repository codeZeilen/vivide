as yet unclassified
scriptArtifacts: someObjects
	"Create a fresh script and open it."
	
	| objects script toolWnd editorWnd |
	VivideLight useClassicMode
		ifTrue: [^ self openArtifacts: someObjects].
	
	objects := someObjects asList.
	
	self flag: #evaluate. "mt: Unwrap name bindings."
	objects := (self currentEvent in: [:evt | evt isDropEvent and: [evt contents hasFlag: #evaluate]])
		ifTrue: [objects collect: [:o | o value]] ifFalse: [objects].
	
	script := [:object | object] asScript
		setProperty: #isNew toValue: true;
		yourself.
	
	"Flatten nested collections if feasible."
	objects := objects gather: [:o | o asList].
	
	toolWnd := ViSinglePaneEditor
		open: script
		for: objects.
	editorWnd := toolWnd editor pane debugQuery.

	^ {toolWnd. editorWnd}