Class {
	#name : #CollectionOfVehicles,
	#superclass : #Object,
	#instVars : [
		'vehicles'
	],
	#classInstVars : [
		'uniqueInstance'
	],
	#category : #VehicleShop
}

{ #category : #initialization }
CollectionOfVehicles class >> current [ 
	^ uniqueInstance ifNil: [ uniqueInstance := self new ]
]

{ #category : #initialization }
CollectionOfVehicles class >> initialize [ 
	self reset
]

{ #category : #initialization }
CollectionOfVehicles class >> reset [ 
	uniqueInstance := nil
]

{ #category : #removing }
CollectionOfVehicles >> addVehicle: aVehicle [
	vehicles add: aVehicle
]

{ #category : #'as yet unclassified' }
CollectionOfVehicles >> allBodys [
	^ (self allVehicles collect: [ :v | v body ]) asSet 
]

{ #category : #'as yet unclassified' }
CollectionOfVehicles >> allVehiclePrinting [
	^ vehicles collect: [ :v | v printVehicle  ]
]

{ #category : #'as yet unclassified' }
CollectionOfVehicles >> allVehicles [
	 ^ vehicles
]

{ #category : #'as yet unclassified' }
CollectionOfVehicles >> allVehiclesFromBody: aBody [
	^ vehicles select:  [ :v | v body = aBody ]
]

{ #category : #'as yet unclassified' }
CollectionOfVehicles >> allVehiclesWithPrice [
	^ vehicles select: [ :v | v vehicleHasPrice  ]
]

{ #category : #'as yet unclassified' }
CollectionOfVehicles >> createVehicleShopDemo [
	^ self
		addVehicle: (Vehicle new model: 'Passat B6'; make: 'Volkswaggen'; year: 2008; numberOfDoors: 5; 						body: 'Wagon'; price: 3899.99) yourself;
		addVehicle: (Vehicle new model: 'E39'; make: 'BMW'; year:1998; numberOfDoors: 4; body: 'Limousine'; price:3500.00) yourself;
		addVehicle: (Vehicle new model: 'GT-R'; make: 'Nissan'; year:2015; numberOfDoors: 2; body: 'Coupe'; price:67900.00) yourself;
		addVehicle: (Vehicle new model: 'Civic Type R'; make: 'Honda'; year:2008; numberOfDoors: 3; body: 'Hatchback'; price:7000.00) yourself;
		addVehicle: (Vehicle new model: 'E46 M3'; make: 'BMW'; year:2004; numberOfDoors: 2; body: 'Cabriole'; price:24500.00) yourself;
		addVehicle: (Vehicle new model: 'Land Cruiser'; make: 'Toyota'; year:2017; numberOfDoors: 5; body: 'SUV'; price:38000.00) yourself.
		
]

{ #category : #initialization }
CollectionOfVehicles >> initialize [ 
	super initialize.
	vehicles := OrderedCollection new.
]

{ #category : #initialization }
CollectionOfVehicles >> length [ 
	^ vehicles size
]

{ #category : #removing }
CollectionOfVehicles >> removeAllVehicles [
	vehicles := OrderedCollection new.
]

{ #category : #removing }
CollectionOfVehicles >> removeBook: aVehicle [
	vehicles remove: aVehicle 
]

{ #category : #removing }
CollectionOfVehicles >> removeVehicle: aVehicle [
	vehicles remove: aVehicle 
]
