organization - steps
unregisterStep: aStep

	(self steps includesKey: aStep id)
		ifFalse: [^ self].
	self steps removeKey: aStep id.
	
	self stepsCategorizer removeElement: aStep id.
	
	self notifier
		stepUnregistered: aStep.