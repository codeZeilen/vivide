flags
updateFlag: symbol description: string value: set

	| item |
	item := self submorphNamed: symbol.
	
	(set and: [item isNil]) ifTrue: [
		self addMorphFront: ((self labelMorphFor: string)
			name: symbol;
			yourself).
		^ self].
	(set not and: [item notNil]) ifTrue: [
		item delete].