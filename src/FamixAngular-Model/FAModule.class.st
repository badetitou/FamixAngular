"
I represent an Angular module
I have 

- declarations: The components, directives, and pipes that belong to this NgModule.
- exports: The subset of declarations that should be visible and usable in the component templates of other NgModules.
- imports: Other modules whose exported classes are needed by component templates declared in this NgModule.
- providers: Creators of services that this NgModule contributes to the global collection of services; they become accessible in all parts of the application. (You can also specify providers at the component level.)
- bootstrap: The main application view, called the root component, which hosts all other application views. Only the root NgModule should set the bootstrap property.
"
Class {
	#name : #FAModule,
	#superclass : #FAEntity,
	#instVars : [
		'#declarations => FMMany type: #FADeclarable opposite: #declarer',
		'#exports => FMMany type: #FADeclarable opposite: #exporters',
		'#bootstap => FMMany type: #FAComponent opposite: #boostraper',
		'#imports => FMMany type: #FAModule opposite: #importers',
		'#importers => FMMany type: #FAModule opposite: #imports',
		'#provides => FMMany type: #FAService opposite: #providers'
	],
	#category : #'FamixAngular-Model-Entities'
}

{ #category : #meta }
FAModule class >> annotation [

	<FMClass: #Module super: #FAEntity>
	<package: #'FamixAngular-Model'>
	<generated>
	^self
]

{ #category : #adding }
FAModule >> addBootstap: anObject [
	<generated>
	^ self bootstap add: anObject
]

{ #category : #adding }
FAModule >> addDeclaration: anObject [
	<generated>
	^ self declarations add: anObject
]

{ #category : #adding }
FAModule >> addExport: anObject [
	<generated>
	^ self exports add: anObject
]

{ #category : #adding }
FAModule >> addImport: anObject [
	<generated>
	^ self imports add: anObject
]

{ #category : #adding }
FAModule >> addImporter: anObject [
	<generated>
	^ self importers add: anObject
]

{ #category : #adding }
FAModule >> addProvide: anObject [
	<generated>
	^ self provides add: anObject
]

{ #category : #accessing }
FAModule >> bootstap [
	"Relation named: #bootstap type: #FAComponent opposite: #boostraper"

	<generated>
	<derived>
	^ bootstap
]

{ #category : #accessing }
FAModule >> bootstap: anObject [

	<generated>
	bootstap value: anObject
]

{ #category : #accessing }
FAModule >> declarations [
	"Relation named: #declarations type: #FADeclarable opposite: #declarer"

	<generated>
	<derived>
	^ declarations
]

{ #category : #accessing }
FAModule >> declarations: anObject [

	<generated>
	declarations value: anObject
]

{ #category : #accessing }
FAModule >> exports [
	"Relation named: #exports type: #FADeclarable opposite: #exporters"

	<generated>
	<derived>
	^ exports
]

{ #category : #accessing }
FAModule >> exports: anObject [

	<generated>
	exports value: anObject
]

{ #category : #accessing }
FAModule >> importers [
	"Relation named: #importers type: #FAModule opposite: #imports"

	<generated>
	^ importers
]

{ #category : #accessing }
FAModule >> importers: anObject [

	<generated>
	importers value: anObject
]

{ #category : #accessing }
FAModule >> imports [
	"Relation named: #imports type: #FAModule opposite: #importers"

	<generated>
	<derived>
	^ imports
]

{ #category : #accessing }
FAModule >> imports: anObject [

	<generated>
	imports value: anObject
]

{ #category : #accessing }
FAModule >> provides [
	"Relation named: #provides type: #FAService opposite: #providers"

	<generated>
	<derived>
	^ provides
]

{ #category : #accessing }
FAModule >> provides: anObject [

	<generated>
	provides value: anObject
]
