<?php

/**
* 
*/
function EulerNumber($integer)
{
	$current_total = 0;
	
	for ($i=0; $i < $integer; $i++) { 
		if (( $i % 3 == 0 ) || ( $i % 5 == 0 )){
			$current_total += $i;
		}
	}
	
	return $current_total;
}


?>