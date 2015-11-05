parsing
messagesIn: parseNode do: block

	parseNode accept: (ParseNodeEnumerator
		ofBlock: [:node | node isMessage
			ifTrue: [block value: node]]).