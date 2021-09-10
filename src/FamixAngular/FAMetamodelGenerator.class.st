Class {
	#name : #FAMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'component',
		'template',
		'directive',
		'service',
		'style',
		'module',
		'declarable'
	],
	#classInstVars : [
		'builder'
	],
	#category : #'FamixAngular-Model-Generator'
}

{ #category : #accessing }
FAMetamodelGenerator class >> packageName [
	^ #'FamixAngular-Model'
]

{ #category : #accessing }
FAMetamodelGenerator class >> prefix [
	^ #FA
]

{ #category : #accessing }
FAMetamodelGenerator class >> submetamodels [

	^ { FamixGenerator }
]

{ #category : #comments }
FAMetamodelGenerator >> commentForComponent [
	^ 'Components are the main building block for Angular applications. Each component consists of:

- An HTML template that declares what renders on the page
- A Typescript class that defines behavior
- A CSS selector that defines how the component is used in a template
- Optionally, CSS styles applied to the template
'
]

{ #category : #comments }
FAMetamodelGenerator >> commentForDirective [
	^ 'Directives are classes that add additional behavior to elements in your Angular applications. With Angular''s built-in directives, you can manage forms, lists, styles, and what users see.'
]

{ #category : #comments }
FAMetamodelGenerator >> commentForModule [
	^ 'I represent an Angular module
I have 

- declarations: The components, directives, and pipes that belong to this NgModule.
- exports: The subset of declarations that should be visible and usable in the component templates of other NgModules.
- imports: Other modules whose exported classes are needed by component templates declared in this NgModule.
- providers: Creators of services that this NgModule contributes to the global collection of services; they become accessible in all parts of the application. (You can also specify providers at the component level.)
- bootstrap: The main application view, called the root component, which hosts all other application views. Only the root NgModule should set the bootstrap property.'
]

{ #category : #comments }
FAMetamodelGenerator >> commentForService [
	^ 'Dependencies are services or objects that a class needs to perform its function. Dependency injection, or DI, is a design pattern in which a class requests dependencies from external sources rather than creating them.'
]

{ #category : #comments }
FAMetamodelGenerator >> commentForStyle [
	^ 'A style that can be applied to the template of a component

I am attached to the components'
]

{ #category : #comments }
FAMetamodelGenerator >> commentForTemplate [
	^ 'In Angular, a template is a chunk of HTML. Use special syntax within a template to build on many of Angular''s features.'
]

{ #category : #definition }
FAMetamodelGenerator >> defineClasses [
	super defineClasses.
	component := builder newClassNamed: #Component comment: self commentForComponent.
	style := builder newClassNamed: #Style comment: self commentForStyle.
	template := builder newClassNamed: #Template comment: self commentForTemplate.
	directive := builder newClassNamed: #Directive comment: self commentForDirective.
	service := builder newClassNamed: #Service comment: self commentForService.
	module := builder newClassNamed: #Module comment: self commentForModule
]

{ #category : #definition }
FAMetamodelGenerator >> defineHierarchy [

	super defineHierarchy.
	component --|> declarable.
	directive --|> declarable
]

{ #category : #definition }
FAMetamodelGenerator >> defineProperties [
	super defineProperties.
	component property: #selector type: #String
]

{ #category : #definition }
FAMetamodelGenerator >> defineRelations [
	super defineRelations.
	component <>- template.
	component <>-* style.
	(module property: #declarations) -* (declarable property: #declarer).
	(module property: #exports) -* (declarable property: #exporters).
	(module property: #bootstap) -* (component property: #boostraper).
	(module property: #imports) *-* (module property: #importers).
	(module property: #provides) -* (service property: #providers)
]

{ #category : #definition }
FAMetamodelGenerator >> defineTraits [

	super defineTraits.
	declarable := builder newTraitNamed: #Declarable
]
