Trait {
	#name : #FADeclarable,
	#instVars : [
		'#declarer => FMOne type: #FAModule opposite: #declarations',
		'#exporters => FMOne type: #FAModule opposite: #exports'
	],
	#category : #'FamixAngular-Model-Traits'
}

{ #category : #meta }
FADeclarable classSide >> annotation [

	<FMClass: #Declarable super: #Object>
	<package: #'FamixAngular-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FADeclarable >> declarer [
	"Relation named: #declarer type: #FAModule opposite: #declarations"

	<generated>
	^ declarer
]

{ #category : #accessing }
FADeclarable >> declarer: anObject [

	<generated>
	declarer := anObject
]

{ #category : #accessing }
FADeclarable >> exporters [
	"Relation named: #exporters type: #FAModule opposite: #exports"

	<generated>
	^ exporters
]

{ #category : #accessing }
FADeclarable >> exporters: anObject [

	<generated>
	exporters := anObject
]
