as yet unclassified
drawOn: aCanvas

	self cornerStyle == #root
		ifTrue: [^ super drawOn: aCanvas].
	
	self drawBackgroundOn: aCanvas.
	"self drawSelectionOn: aCanvas."
	self drawLabelOn: aCanvas.