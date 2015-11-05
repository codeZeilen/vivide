parsing
anyMessageIn: parseNode satisfying: block
	
	self messagesIn: parseNode do: [:node |
		(block value: node) ifTrue: [^ true]].
	^ false