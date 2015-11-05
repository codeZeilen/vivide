private
labelMorphFor: aString

	| bg lbl |
	bg := Morph new
		color: (Color gray: 0.75);
		cornerStyle:  #rounded;
		cornerRadius: 4;
		yourself.

	lbl := ('<font color="#FFFFFF">', aString, '</font>') asTextFromHtml asMorph.
	bg addMorph: lbl.
	
	bg extent: lbl extent + (10@2).
	lbl topLeft: bg topLeft + (5@1).
		
	^ bg