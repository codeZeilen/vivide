definitions
defdef35c40345a5047982466d86dfdfbc4
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls | (cls theNonMetaClass methodDict values , cls theMetaClass methodDict values) sorted: [:m1 :m2 | m1 selector <= m2 selector]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'def35c40-345a-5047-9824-66d86dfdfbc4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:55:27 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls | (cls theNonMetaClass methodDict values , cls theMetaClass methodDict values) sorted: [:m1 :m2 | m1 selector <= m2 selector]]]
		value: in) do: [:result | out addAll: result asList]]')})