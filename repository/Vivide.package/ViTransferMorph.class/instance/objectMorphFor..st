private
objectMorphFor: anObject

	| bg icn lbl |
	bg := Morph new
		color: (Color gray: 0.85);
		cornerStyle:  #rounded;
		cornerRadius: 4;
		yourself.

	icn := ((self iconFor: anObject) asFormOfDepth: 32) asMorph.
	lbl := (self labelFor: anObject) asMorph.

	bg addMorph: icn.
	bg addMorph: lbl.
	
	bg extent: lbl extent + (10@2) + (icn width @ 0).
	
	icn topLeft: bg topLeft + (5@1).
	lbl topLeft: bg topLeft + (5@1) + (icn width+2 @ 0).
		
	^ bg