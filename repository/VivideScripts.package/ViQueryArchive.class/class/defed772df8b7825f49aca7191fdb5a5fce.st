definitions
defed772df8b7825f49aca7191fdb5a5fce
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:object |
	"ContextVariableInspector >> fieldList, selection"
	{#thisContext -> object.
	#'stack top' -> (object stackPtr > 0 ifTrue: [object top]).
	#'all temp vars' -> object tempsAndValues},
	(object tempNames withIndexCollect: [:nm :idx |
		nm -> (object debuggerMap namedTempAt: idx in: object)])]).
(#class -> ViQueryMapDefinition).
(#id -> #'ed772df8-b782-5f49-aca7-191fdb5a5fce').
(#inputKind -> MethodContext).
(#mapType -> #each).
(#outputKind -> Association).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 10:17:57 am')})).
(#sourceCode -> '[:object |
	"ContextVariableInspector >> fieldList, selection"
	{#thisContext -> object.
	#''stack top'' -> (object stackPtr > 0 ifTrue: [object top]).
	#''all temp vars'' -> object tempsAndValues},
	(object tempNames withIndexCollect: [:nm :idx |
		nm -> (object debuggerMap namedTempAt: idx in: object)])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})