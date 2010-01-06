<?php

require_once 'PHPUnit/Framework.php';
require_once '../code.php';

class FibonacciTest extends PHPUnit_Framework_TestCase 
{
	
	function __construct() {
            $this->fibonacci_to_one_hundred  = array('1', '2', '3', '5', '8', '13', '21', '34', '55', '89');
            $this->fibonacci_to_one_thousand = array('1', '2', '3', '5', '8', '13', '21', '34', '55', '89', '144', '233', '377', '610', '987');

			$this->array_of_numbers_one_through_fifteen = array('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15');
			$this->array_of_evens_two_through_fourteen = array('2', '4', '6', '8', '10', '12', '14');
        }
	
	public function test_fibonacci_numbers()
    {
		$this->assertEquals( $this->fibonacci_to_one_hundred, FibonacciNumbersUpTo(100),  "ERROR" );
		$this->assertEquals( $this->fibonacci_to_one_thousand, FibonacciNumbersUpTo(1000), "ERROR" );
	}
	
	public function test_only_evens_left()
	    {
		$this->assertEquals( $this->array_of_evens_two_through_fourteen, EvenNumbersInAnArray($this->array_of_numbers_one_through_fifteen),  "ERROR" );
	}
}

?>