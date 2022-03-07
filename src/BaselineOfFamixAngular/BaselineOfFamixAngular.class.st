Class {
	#name : #BaselineOfFamixAngular,
	#superclass : #BaselineOf,
	#category : #BaselineOfFamixAngular
}

{ #category : #baselines }
BaselineOfFamixAngular >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			self defineDependencies: spec.
			self definePackages: spec.
			self defineGroups: spec ]
]

{ #category : #baselines }
BaselineOfFamixAngular >> defineDependencies: spec [
	spec
		baseline: 'SmaCC'
		with: [ spec
				loads: #('Javascript' 'withSource');
				repository: 'github://j-brant/SmaCC:master/src' ].
]

{ #category : #baselines }
BaselineOfFamixAngular >> defineGroups: baseline [

	
]

{ #category : #baselines }
BaselineOfFamixAngular >> definePackages: spec [

	spec
		package: 'FamixAngular';
		package: 'FamixAngular-Model';
		package: 'FamixAngular-Importer' with: [ spec requires: #( 'SmaCC' ) ]
]
