"
Components are the main building block for Angular applications. Each component consists of:

- An HTML template that declares what renders on the page
- A Typescript class that defines behavior
- A CSS selector that defines how the component is used in a template
- Optionally, CSS styles applied to the template

"
Class {
	#name : #FAComponent,
	#superclass : #FAEntity,
	#traits : 'FADeclarable',
	#classTraits : 'FADeclarable classTrait',
	#instVars : [
		'#selector => FMProperty',
		'#template => FMOne type: #FATemplate opposite: #component',
		'#styles => FMMany type: #FAStyle opposite: #component',
		'#boostraper => FMOne type: #FAModule opposite: #bootstap'
	],
	#category : #'FamixAngular-Model-Entities'
}

{ #category : #meta }
FAComponent class >> annotation [

	<FMClass: #Component super: #FAEntity>
	<package: #'FamixAngular-Model'>
	<generated>
	^self
]

{ #category : #adding }
FAComponent >> addStyle: anObject [
	<generated>
	^ self styles add: anObject
]

{ #category : #accessing }
FAComponent >> boostraper [
	"Relation named: #boostraper type: #FAModule opposite: #bootstap"

	<generated>
	^ boostraper
]

{ #category : #accessing }
FAComponent >> boostraper: anObject [

	<generated>
	boostraper := anObject
]

{ #category : #accessing }
FAComponent >> selector [

	<FMProperty: #selector type: #String>
	<generated>
	^ selector
]

{ #category : #accessing }
FAComponent >> selector: anObject [
	<generated>
	selector := anObject
]

{ #category : #accessing }
FAComponent >> styles [
	"Relation named: #styles type: #FAStyle opposite: #component"

	<generated>
	<derived>
	^ styles
]

{ #category : #accessing }
FAComponent >> styles: anObject [

	<generated>
	styles value: anObject
]

{ #category : #navigation }
FAComponent >> stylesGroup [
	<generated>
	<navigation: 'Styles'>
	^ MooseSpecializedGroup withAll: self styles asSet
]

{ #category : #accessing }
FAComponent >> template [
	"Relation named: #template type: #FATemplate opposite: #component"

	<generated>
	^ template
]

{ #category : #accessing }
FAComponent >> template: anObject [

	<generated>
	template := anObject
]

{ #category : #navigation }
FAComponent >> templateGroup [
	<generated>
	<navigation: 'Template'>
	^ MooseSpecializedGroup with: self template
]
