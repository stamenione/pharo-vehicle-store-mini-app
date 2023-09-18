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

{ #category : #'as yet unclassified' }
Vehicle class >> model: aModel make: aMake year: aYear numberOfDoors: aNumberOfDoors body: aBody [
^ self new
	model: aModel;
	make: aMake;
	year: aYear;
	numberOfDoors: aNumberOfDoors;
	price: 0;
	body: aBody;
	yourself  

]

{ #category : #accessing }
Vehicle >> body [ 
	^ body
]

{ #category : #accessing }
Vehicle >> body: aString [
	body := aString
]

{ #category : #accessing }
Vehicle >> lessThanPrice1000 [ 
	^ price < 1000
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

{ #category : #printing }
Vehicle >> printVehicle [
	^ 'Model: ',model , ' ', 'Make: ' , make , ' ', 'Year: ' , (year greaseString),' ', 'Body: ', body, ' ', 'Number Of Doors: ', (numberOfDoors greaseString), ' ', 'Price: ', (price greaseString) 
]

{ #category : #initialization }
Vehicle >> setDiscoundForVehicle20 [
	price := price - (price * 0.2)
]

{ #category : #testing }
Vehicle >> vehicleHasPrice [
	^ price > 0
]

{ #category : #accessing }
Vehicle >> year [ 
	^ year
]

{ #category : #accessing }
Vehicle >> year: aInteger [
	year := aInteger
]
