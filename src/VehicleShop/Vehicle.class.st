Class {
	#name : #Vehicle,
	#superclass : #Object,
	#instVars : [
		'model',
		'make',
		'year',
		'numberOfDoors',
		'price',
		'body'
	],
	#category : #VehicleShop
}

{ #category : #accessing }
Vehicle >> model [
	^ model
]

{ #category : #accessing }
Vehicle >> model: aString [
	^ model := aString
]
