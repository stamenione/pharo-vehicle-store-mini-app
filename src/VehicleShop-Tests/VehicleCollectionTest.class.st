"
A VehicleCollectionTest is a test class for testing the behavior of VehicleCollection
"
Class {
	#name : #VehicleCollectionTest,
	#superclass : #TestCase,
	#instVars : [
		'vehicleshop',
		'firstvehicle',
		'secondvehicle'
	],
	#category : #'VehicleShop-Tests'
}

{ #category : #running }
VehicleCollectionTest >> setUp [ 
	super setUp.
	vehicleshop := CollectionOfVehicles current. 
	vehicleshop removeAllVehicles.
	firstvehicle := (Vehicle new model: 'Passat B6'; make: 'Volkswaggen'; year: 2008; numberOfDoors: 5; body: 'Wagon'; price: 3899.99).
	vehicleshop addVehicle: firstvehicle.
	secondvehicle := (Vehicle new model: 'E39'; make: 'BMW'; year:1998; numberOfDoors: 4; body: 'Limousine'; price:3500.00).
	
]

{ #category : #running }
VehicleCollectionTest >> tearDown [
	CollectionOfVehicles reset.
]

{ #category : #running }
VehicleCollectionTest >> testAddVehicle [
	vehicleshop addVehicle: secondvehicle.
	self assert: vehicleshop size equals: 2.
]

{ #category : #running }
VehicleCollectionTest >> testAllVehicles [
	vehicleshop addVehicle: secondvehicle.
	self assert: vehicleshop allVehicles size equals: 2.
]

{ #category : #running }
VehicleCollectionTest >> testAllVehiclesWithPrice [
	vehicleshop addVehicle: secondvehicle.
	self assert: vehicleshop allVehiclesWithPrice size equals: 1.
]

{ #category : #running }
VehicleCollectionTest >> testAllVehiclesWithPriceAndBody [
	vehicleshop addVehicle: secondvehicle.
	self assert: (vehicleshop allVehiclesFromBody: 'Wagon') size equals: 1.
	self assert: vehicleshop allVehiclesWithPrice size equals: 2.
]

{ #category : #running }
VehicleCollectionTest >> testAllVehiclesWithSameBody [
	self assert: (vehicleshop allVehiclesFromBody: 'Wagon') size equals: 1
]

{ #category : #running }
VehicleCollectionTest >> testLength [
	self assert: vehicleshop size equals: 1.
]

{ #category : #running }
VehicleCollectionTest >> testRemoveAllVehicles [
	vehicleshop removeAllVehicles.
	self assert: vehicleshop size equals: 0.
]
