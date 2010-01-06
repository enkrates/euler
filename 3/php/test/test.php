<?php

require_once 'PHPUnit/Framework.php';
require_once '../code.php';

class FibonacciTest extends PHPUnit_Framework_TestCase 
{
	
	function __construct() {
            $this->factors_of_nine  = array('1', '3', '9');
            $this->factors_of_thirty = array('1', '2', '3', '5', '6', '10', '15', '30');

			// $this->array_of_numbers_one_through_fifteen = array('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15');
			// $this->array_of_evens_two_through_fourteen = array('2', '4', '6', '8', '10', '12', '14');
			        }
	
	public function test_find_factors()
    {
		$this->assertEquals( $this->factors_of_nine, find_factors_of_an_integer(9),  "ERROR" );
		$this->assertEquals( $this->factors_of_thirty, find_factors_of_an_integer(30), "ERROR" );
	}
	
	// public function test_only_evens_left()
	//     {
	// 	$this->assertEquals( $this->array_of_evens_two_through_fourteen, EvenNumbersInAnArray($this->array_of_numbers_one_through_fifteen),  "ERROR" );
	// }
}

?>