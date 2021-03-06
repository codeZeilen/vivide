testing
isEndOfLevel

	| found i j |
	self next ifNil: [^ true].
	self isPropertyExtraction ifTrue: [
		^ (self next isPropertyExtraction and: [self next mergeConsecutiveExtractions])
			ifTrue: [false]
			ifFalse: [true]].
	
	self isReferenceStep ifTrue: [
		found := false.
		i := 0.
		j := 0.
		self allStepsDo: [:step |
			i := i + 1.
			step isPropertyExtraction ifTrue: [
				found := true.
				j := i]].
		found ifTrue: [
			j < i ifTrue: ["There are other extractions in between." ^ true].
			^ (self next isPropertyExtraction and: [self next mergeConsecutiveExtractions])
				ifTrue: [false]
				ifFalse: [true]].
		].
	
	^ false