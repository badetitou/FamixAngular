Class {
	#name : #FAEntity,
	#superclass : #MooseEntity,
	#category : #'FamixAngular-Model-Entities'
}

{ #category : #meta }
FAEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'FamixAngular-Model'>
	<generated>
	^self
]

{ #category : #meta }
FAEntity class >> metamodel [

	<generated>
	^ FAModel metamodel
]
