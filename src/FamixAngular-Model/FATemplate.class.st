"
In Angular, a template is a chunk of HTML. Use special syntax within a template to build on many of Angular's features.
"
Class {
	#name : #FATemplate,
	#superclass : #FAEntity,
	#instVars : [
		'#component => FMOne type: #FAComponent opposite: #template'
	],
	#category : #'FamixAngular-Model-Entities'
}

{ #category : #meta }
FATemplate class >> annotation [

	<FMClass: #Template super: #FAEntity>
	<package: #'FamixAngular-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FATemplate >> component [
	"Relation named: #component type: #FAComponent opposite: #template"

	<generated>
	<container>
	<derived>
	^ component
]

{ #category : #accessing }
FATemplate >> component: anObject [

	<generated>
	component := anObject
]

{ #category : #navigation }
FATemplate >> componentGroup [
	<generated>
	<navigation: 'Component'>
	^ MooseSpecializedGroup with: self component
]
