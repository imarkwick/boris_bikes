Boris Bikes2
==============
boris bikes ruby practice

##CR Cards

###Bike Class

it should:
- work on initialization		x
- can break									x

it interacts with:
- Docking Station 					x

###User Class

it should:
- have no bikes when initialized											x
- be able to take a bike from the docking station 		x
- be able to dock a bike at the docking station 			x
- be able to break a bike 														x

it interacts with:
- Docking Station 																		x
- Bikes 																							x

###Docking Station Class

it should:
- have no bikes to begin with							x
- accept bikes 														x
- release bikes 													x
- know when it is full										x
- not accept a bike when it is full				x
- know when it is empty										x
- not release a bike when it is empty			x
- not release a broken bike to a user 		x
- know how many broken bikes there are 		x
- release broken bikes to the van 				x
- know no.of available bikes 							x

it interacts with:
- Bikes 																	x
- Van 																		x

###Van Class

it should:
- accept a bike from the station 					x
- release a bike to the garage  					x
- accept a bike from the garage
- release a bike to the station
- know when it is full 										x

it interacts with:
- Bike
- Garage
- Docking Station


###Garage Class

it should:
- accept a broken bike from the van 		x
- fix the bike 													x
- release a fixed bike to the van 			
- know when it is full
- not accept a bike when it is full
- know when it is empty
- not release a bike when it is empty

it interacts with:
- Bike
- Van