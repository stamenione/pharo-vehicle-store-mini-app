Class {
	#name : #VehicleShopConfiguration,
	#superclass : #SpApplicationConfiguration,
	#category : #VehicleShop
}

{ #category : #styling }
VehicleShopConfiguration >> styleSheet [ 
	^ super styleSheet, (SpStyleSTONReader fromString: '
		.application [
			.label [
				.title [
					Font { #name: ""Vehicle Shop"" , #size: 24 }
					Draw { #color: #red }
				]
			]
		]')
]
