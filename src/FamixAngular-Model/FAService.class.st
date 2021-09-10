"
Dependencies are services or objects that a class needs to perform its function. Dependency injection, or DI, is a design pattern in which a class requests dependencies from external sources rather than creating them.
"
Class {
	#name : #FAService,
	#superclass : #FAEntity,
	#instVars : [
		'#providers => FMOne type: #FAModule opposite: #provides'
	],
	#category : #'FamixAngular-Model-Entities'
}

{ #category : #meta }
FAService class >> annotation [

	<FMClass: #Service super: #FAEntity>
	<package: #'FamixAngular-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FAService >> providers [
	"Relation named: #providers type: #FAModule opposite: #provides"

	<generated>
	^ providers
]

{ #category : #accessing }
FAService >> providers: anObject [

	<generated>
	providers := anObject
]
