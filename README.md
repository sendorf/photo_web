Photo Web
====================================================

The task is to write a small utility site that will	get	a	vehicle’s	registration plate and stock reference from the user and then display all the images	available	for	a vehicle.

The URL for an image follows a pattern	

[server]/imageserver/[obfuscated-­‐stock-­‐reference]/[size]/[camera]
  
Where:
* obfuscated-­‐stock-­‐reference	is	calculated   using the   rules   below	
* size is	either 350 or 800	
* camera is	one of f, i, r, 4, 5 or 6

The obfuscated stock reference is calculated by interleaving the stock reference with the reversal of the	registration plate and appending	the	9th	character	of the stock reference and taking	the shortest possible	solution (i.e. ignore any unused characters	from the stock reference)	
