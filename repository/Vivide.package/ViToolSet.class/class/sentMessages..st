parsing
sentMessages: parseNode
	"Return a list of all message sent in the given AST."
	
	| visitor result |
	result := Set new.
	visitor := ParseNodeEnumerator
		ofBlock: [:node | node isMessage ifTrue: [result add: node selector key]].
	parseNode accept: visitor.
	^ result asArray