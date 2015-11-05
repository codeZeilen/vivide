accessing
passenger: anObject

	| objects |
	passenger := anObject.

	self removeAllMorphs.

	objects := anObject asList.
	
	(objects first: (5 min: objects size)) do: [:o |
		self addMorphBack: (self objectMorphFor: 
			((o isKindOf: ViArtifactContainer)
				ifTrue: [o object]
				ifFalse: [o])).
		"Show thumbnail."
		({ViArtifactContainer. ViPane} anySatisfy: [:cls | o isKindOf: cls])
			ifTrue: [self addMorphBack: (o imageForm in: [:form |
				(form width > 300 or: [form height > 200])
					ifTrue: [form scaledToSize: 300@200]
					ifFalse: [form]]) asMorph]].
	
	objects size > 5 ifTrue: [
		self addMorphBack: (self labelMorphFor: ('{1} more' format: {objects size - 5}))].