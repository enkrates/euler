<?php

function get_highest_palindrome()
{
	$palindrome_array = array();
	
	for ($i=100; $i < 999; $i++) { 
		for ($j=100; $j < 999; $j++) { 
			$product = $i * $j;
			$product_string = strval($product);
			
			if ($product_string == strrev($product_string)) {
				$palindrome_array[] = $product;
			}
		}
	}
	
	rsort($palindrome_array);
	
	return $palindrome_array[0];

}

// echo get_highest_palindrome();

?>