Class {
	#name : #FAModel,
	#superclass : #MooseModel,
	#category : #'FamixAngular-Model-Model'
}

{ #category : #accessing }
FAModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits')
]

{ #category : #meta }
FAModel class >> annotation [
	<FMClass: #FAModel super: #MooseModel>
	<package: #'FamixAngular-Model'>
	<generated>
]
