"
A VehicleTest is a test class for testing the behavior of Vehicle
"
Class {
	#name : #VehicleTest,
	#superclass : #TestCase,
	#category : #'VehicleShop-Tests'
}

{ #category : #test }
VehicleTest >> testCreationOfVehicle [

	| v |
	v := Vehicle new model: 'Passat B6'; make: 'Volkswaggen'; year: 2008; numberOfDoors: 5;
				body: 'Wagon'; price: 3899.99.
	self assert: v model equals: 'Passat B6'.
	self assert: v price equals: 3899.99.
	self assert: v make equals: 'Volkswaggen'.
	self assert: v numberOfDoors equals: 5.
	self assert: v body equals: 'Wagon'. 
]

{ #category : #test }
VehicleTest >> testDiscount [

	| v |
	v := Vehicle new price: 10000.
	v setDiscoundForVehicle20.
	self assert: v price equals: 8000.00.
]

{ #category : #test }
VehicleTest >> testLessThanPrice1000 [

	| v |
	v := Vehicle new price: 700.
	self assert: v lessThanPrice1000 .
]
