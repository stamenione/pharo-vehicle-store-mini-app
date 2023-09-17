Class {
	#name : #VehicleShopApplication,
	#superclass : #SpApplication,
	#category : #VehicleShop
}

{ #category : #initialization }
VehicleShopApplication >> initialize [ 
	self
			useBackend: #Morphic 
			with: VehicleShopConfiguration new.
]

{ #category : #running }
VehicleShopApplication >> start [ 
	^ (self new: VehicleShopPresenter) openWithSpec.
]
