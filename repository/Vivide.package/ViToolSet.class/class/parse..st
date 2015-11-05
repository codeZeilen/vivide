parsing
parse: someCode

	^ self
		parse: someCode
		onError: [nil]