Class {
	#name : #FAImporter,
	#superclass : #Object,
	#instVars : [
		'tsParser'
	],
	#category : #'FamixAngular-Importer'
}

{ #category : #initialization }
FAImporter >> initialize [
	super initialize.
	tsParser := TypeScriptParser.
]
