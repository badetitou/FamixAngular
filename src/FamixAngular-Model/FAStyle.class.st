"
A style that can be applied to the template of a component

I am attached to the components
"
Class {
	#name : #FAStyle,
	#superclass : #FAEntity,
	#instVars : [
		'#component => FMOne type: #FAComponent opposite: #styles'
	],
	#category : #'FamixAngular-Model-Entities'
}

{ #category : #meta }
FAStyle class >> annotation [

	<FMClass: #Style super: #FAEntity>
	<package: #'FamixAngular-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FAStyle >> component [
	"Relation named: #component type: #FAComponent opposite: #styles"

	<generated>
	<container>
	^ component
]

{ #category : #accessing }
FAStyle >> component: anObject [

	<generated>
	component := anObject
]

{ #category : #navigation }
FAStyle >> componentGroup [
	<generated>
	<navigation: 'Component'>
	^ MooseSpecializedGroup with: self component
]
