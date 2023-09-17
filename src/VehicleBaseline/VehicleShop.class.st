Class {
	#name : #VehicleShop,
	#superclass : #BaselineOf,
	#category : #VehicleBaseline
}

{ #category : #baselines }
VehicleShop >> baseline: spec [ 
	<baseline>
	spec
		for: #common
		do: [  
			"Packages"
			spec 
				package: 'VehicleShop']
]
