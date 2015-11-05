help
showHelp

	| text |
	self owner ifNil: [^ self].

	text := ('<font color="#008800">Drag Modifier Keys</font>',
		('<font color="#000000">{1}</font>' format: {
		self flagSpecs
			inject: ''
			into: [:label :spec | label, '<br>&nbsp;&nbsp;&nbsp;', spec first asString, ' ... ', spec second]	
		})) asTextFromHtml asMorph.
	
	helpBox := Morph new
		color: BalloonMorph balloonColor;
		borderColor: Color black;
		bounds: (text fullBounds outsetBy: 15);
		addDropShadow.
	text topLeft: helpBox topLeft + (15@15).
	helpBox addMorphFront: text.

	helpBoxPositions := OrderedCollection new.
	helpBoxPositions add: (RealEstateAgent maximumUsableArea bottomRight - helpBox extent - (30@30)).
	helpBoxPositions add: (RealEstateAgent maximumUsableArea topLeft + (30@30)).

	helpBox topLeft: helpBoxPositions first.
	helpBox openInWorld.

	"Remove help box after 10 seconds. Workaround for debuggers..."
	helpBox addAlarm: #delete after: 10000.