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
Vehicle >> body [ 
	^ body
]

{ #category : #accessing }
Vehicle >> body: aString [
	body := aString
]

{ #category : #accessing }
Vehicle >> make [ 
	^ make
	
]

{ #category : #accessing }
Vehicle >> make: aString [
	make := aString
	
]

{ #category : #accessing }
Vehicle >> model [
	^ model
]

{ #category : #accessing }
Vehicle >> model: aString [
	^ model := aString
]

{ #category : #accessing }
Vehicle >> numberOfDoors [
	^ numberOfDoors 
]

{ #category : #accessing }
Vehicle >> numberOfDoors: aInteger [
	numberOfDoors := aInteger 
]

{ #category : #accessing }
Vehicle >> price [
	^ price
]

{ #category : #accessing }
Vehicle >> price: aDouble [
	price := aDouble
]

{ #category : #accessing }
Vehicle >> year [ 
	^ year
]

{ #category : #accessing }
Vehicle >> year: aInteger [
	year := aInteger
]
