<?php

function FibonacciNumbersUpTo($integer)
{
	$fibonacci_array = Array(1, 2);
	$new_fib_number = 0;
	
	while ($new_fib_number < $integer) {
		$reversed_fib_array = array_reverse($fibonacci_array);
		$new_fib_number = $reversed_fib_array[0] + $reversed_fib_array[1];
		$fibonacci_array[] = $new_fib_number;
	}
	
	  if ($new_fib_number >= $integer) {
    
    	array_pop($fibonacci_array);
    	
		}
 
  
  return $fibonacci_array;
	
	
}

function EvenNumbersInAnArray($array)
{
	$array_of_evens = array();
  
  	for ($i=0; $i < count($array); $i++) { 
  		if ($array["$i"] % 2 == 0) {
  			$array_of_evens[] = $array["$i"];
  		}
  	}
  
  return $array_of_evens;
}


?>