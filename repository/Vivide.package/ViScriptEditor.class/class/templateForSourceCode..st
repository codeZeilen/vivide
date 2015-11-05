templates - support
templateForSourceCode: code
	"Guess the underlying script template given the code."

	| node template properties |
	properties := Dictionary new.
	template := self templateStandard.
	node := ViToolSet
		parse: code
		onError: [^ template -> properties].

	((ViToolSet sentMessages: node) anySatisfy: [:msg |
		#(collect: select: gather: reject: reduce: inject: asGroups sort: sorted: sorted sortBy:) anySatisfy: [:verb |  
			msg beginsWith: verb]]) ifTrue: [
			template := self templateAllAtOnce].
	
	node isBlockNode ifTrue: [
		node arguments size = 0 ifTrue: [template := self templateGlobal].
		node arguments size > 1 ifTrue: [
			template := self templateTuples.
			properties at: #inputKind put: (Array new: node arguments size)].

		(ViToolSet anyMessageIn: node satisfying: [:msg |
			(msg selector key = #-> and: [msg receiver isLiteralNode])
				"and: [#(text icon color morph icon) includes: child receiver value]"])
					ifTrue: [ "So we have an association with suspicious keys..."
						"properties at: #modelClass put: ViQueryNode." "Skip default?"
						properties at: #isProperty put: true.
						
						node arguments size = 0
							ifTrue: [template := self templateWrapper]
							ifFalse: [template := node arguments size = 1
								ifTrue: [self templateProperties]
								ifFalse: [self templateTuplesProperties]]].  
	].

	(node isMessage and: [node selector key = #->]) ifTrue: [
		template := nil -> ''.
		"Full block in script properties detected!"
		(Compiler evaluate: code) value do: [:assoc |
			properties at: assoc key put: assoc value].
		
		self flag: #todo. "mt: Detect script references."].

	^ template -> properties