selection
selectGroup: aModel

	| oldEdge |
	super selectGroup: aModel.
	
"	self editor ifNotNil: [:ed |
		aModel refreshOperationsFromEditor: ed].
"	
	self orientation == #rightToLeft
		ifTrue: [oldEdge := self right].
	
	secondaryList useOptimalWidth.
"		useOptimalExtent;
		height: (secondaryList height max: self height).
"	
	self orientation == #rightToLeft
		ifTrue: [self fullBounds; right: oldEdge].
