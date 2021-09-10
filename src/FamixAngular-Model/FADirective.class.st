"
Directives are classes that add additional behavior to elements in your Angular applications. With Angular's built-in directives, you can manage forms, lists, styles, and what users see.
"
Class {
	#name : #FADirective,
	#superclass : #FAEntity,
	#traits : 'FADeclarable',
	#classTraits : 'FADeclarable classTrait',
	#category : #'FamixAngular-Model-Entities'
}

{ #category : #meta }
FADirective class >> annotation [

	<FMClass: #Directive super: #FAEntity>
	<package: #'FamixAngular-Model'>
	<generated>
	^self
]
