as yet unclassified
scriptPointer
	"Indicate which block is currently visible."
	
	^ scriptPointer ifNil: [self initializeScriptPointer]