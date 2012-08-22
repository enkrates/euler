/*
 * PE1
 * https://github.com/enkrates/euler
 *
 * Copyright (c) 2012 William Sullivan
 * Licensed under the MIT license.
 */

var _ = require('underscore')._;


exports.eulerNumber = function(number) {
	var range = _.range(number);
	return _.chain(range)
	.filter(function(num) { return num % 3 === 0 || num % 5 === 0; })
	.reduce(function(first, second) {return first + second;})
	.value();
};