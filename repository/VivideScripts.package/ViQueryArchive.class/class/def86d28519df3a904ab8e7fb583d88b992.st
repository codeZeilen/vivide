definitions
def86d28519df3a904ab8e7fb583d88b992
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:method | CodeHolder new
	contents: (method methodClass newCompiler format: method getSource in: method methodClass notifying: nil decorated: true);
	instVarNamed: #currentCompiledMethod put: method;
	yourself]).
(#class -> ViQueryMapDefinition).
(#id -> #'86d28519-df3a-904a-b8e7-fb583d88b992').
(#inputKind -> CompiledMethod).
(#mapType -> #each).
(#outputKind -> ViSourceCodeSnippet).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 February 2014 2:02:54 pm')})).
(#sourceCode -> '[:method | CodeHolder new
	contents: (method methodClass newCompiler format: method getSource in: method methodClass notifying: nil decorated: true);
	instVarNamed: #currentCompiledMethod put: method;
	yourself]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})