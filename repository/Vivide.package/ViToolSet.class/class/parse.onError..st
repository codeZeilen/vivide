parsing
parse: someCode onError: block

	[^ (((Parser new
		parse: someCode
		class: Object
		noPattern: true
		notifying: nil
		ifFail: [])
			"Unpack do-it method."
			body statements collect: [:s |
				s class == ReturnNode
					ifTrue: [s expr]
					ifFalse: [s]]) in: [:result |
						result size = 1
							ifTrue: [result first]
							ifFalse: [result] ])
	]
		on: Error do: [:ex | ^ block cull: ex]