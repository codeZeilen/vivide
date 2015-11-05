parsing
parseMethod: someCode onError: block

	[^ (Parser new
		parse: someCode
		class: Object
		noPattern: false
		notifying: nil
		ifFail: [])
	]
		on: Error do: [:ex | ^ block cull: ex]