initialization
updateClass

	| nodes |
	nodes := (ViToolSet parse: self theClassDefinition) asList.
	self theClass: (Smalltalk at: nodes first arguments first key).