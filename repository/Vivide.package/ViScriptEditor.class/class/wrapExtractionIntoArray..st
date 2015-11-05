support
wrapExtractionIntoArray: code
	"Insert missing curly brackets for property steps."

	| inner node |
	inner := code.
	node := ViToolSet parse: inner.
	self assert: node isBlockNode.
	node statements first class == BraceNode ifFalse: [
		| a b |
		a := code indexOf: $|.
		b := code lastIndexOf: $].
		"We need to wrap it into an array."
		inner := '{1}\{ {2} \}{3}' format: {
			code copyFrom: 1 to: a.
			code copyFrom: a+1 to: b-1.
			']'
		}.
	].

	^ inner.