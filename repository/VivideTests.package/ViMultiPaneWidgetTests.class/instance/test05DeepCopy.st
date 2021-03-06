tests
test05DeepCopy

	| newPane deepCopy tool |
	newPane := sut acceptDroppingObject: #(2 4) at: 50@50 from: pane.
	newPane currentQuery: ([:num | (String new: num) atAllPut: $x] asScript
		adoptOrganization: sut organization;
		yourself).
	self assert: 2 equals: newPane recentQueries size.

	deepCopy := self metaScript deepCopy.
	self assert: deepCopy organization ~~ self metaScript organization.