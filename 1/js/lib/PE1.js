/*
 * PE1
 * https://github.com/enkrates/euler
 *
 * Copyright (c) 2012 William Sullivan
 * Licensed under the MIT license.
 */


exports.eulerNumber = function(number) {
	var current_total = 0;
	
	for (var i=0; i < number; i++) { 
		if (( i % 3 === 0 ) || ( i % 5 === 0 )){
			current_total += i;
		}
	}
	
	return current_total;
};