definitions
def8082cd6248521c498e1623b3ddd626bf
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:object | {
	object isVariableBinding
		ifTrue: [object value isBehavior
			ifTrue: ['** inheritance **']
			ifFalse: ['** variables **']]
		ifFalse: [object isBehavior
			ifTrue: ['** traits **']
			ifFalse: [object methodClass organization categoryOfElement: object selector]].
	object
	
	} asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'8082cd62-4852-1c49-8e16-23b3ddd626bf').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 May 2015 4:43:48 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:object | {
	object isVariableBinding
		ifTrue: [object value isBehavior
			ifTrue: [''** inheritance **'']
			ifFalse: [''** variables **'']]
		ifFalse: [object isBehavior
			ifTrue: [''** traits **'']
			ifFalse: [object methodClass organization categoryOfElement: object selector]].
	object
	
	} asTuples]]
		value: in) do: [:result | out addAll: result asList]]')})