Class {
	#name : #VehicleShopPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'list'
	],
	#category : #VehicleShop
}

{ #category : #initialization }
VehicleShopPresenter >> initializePresenter [ 
	| collection |
	
	collection := CollectionOfVehicles new.
	collection createVehicleShopDemo.
	
	list := self newList.
	
	list
		items: collection allVehiclePrinting .
]

{ #category : #initialization }
VehicleShopPresenter >> initializeWindow: aWindowPresenter [
	aWindowPresenter 
	title: 'Vehicle Collection';
	initialExtent: 500@400
]

{ #category : #accesing }
VehicleShopPresenter >> list [
	^ list
]
