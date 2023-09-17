<<<<<<< HEAD
"
Vehicle Class
"
Class {
	#name : #Vehicle,
	#superclass : #Object,
	#category : #VehicleShop
}
=======
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
>>>>>>> 79e2d02d87d6556cfa2019396b4f9b88849f77ca
