dropping/grabbing
aboutToBeGrabbedBy: aHand

	super aboutToBeGrabbedBy: aHand.
	self center: aHand position.