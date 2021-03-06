as yet unclassified
initializePrimaryList

	super initializePrimaryList.
	
	primaryList cellInset: 0.
	
	dropTarget := ViMethodDropTarget new
		extent: 22@18;
		color: Color transparent;
		text: '+';
		acceptedDropBlock: [:passenger :type | #(objects artifact queries) includes: type];
		convertPassengerBlock: [:objects | (objects collect: [:obj |
			(obj isKindOf: ViQueryStep) ifTrue: [obj] ifFalse: []])
				reject: [:obj | obj isNil]].
	
	self halt.
	self groups add: #Queries -> (ViQueryNode new firstStep: (ViQueryStep use: {self object} in: (ViQueryOrganizer default stepById: #orderedSteps))).
	
	primaryList addMorph: dropTarget.