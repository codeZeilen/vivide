definitions
defecc7884ca7d8df4685ee57b6050211bc
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:reference | {
	PackageOrganizer default packageOfMethod: reference ifNone: ['(no package)'].
	reference
	} asTuples]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'ecc7884c-a7d8-df46-85ee-57b6050211bc').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'1d5b5851-231c-fb4e-80df-f487c7e36540').
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:36:10 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:reference | {
	PackageOrganizer default packageOfMethod: reference ifNone: [''(no package)''].
	reference
	} asTuples]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]')})