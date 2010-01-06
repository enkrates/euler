<?php

require_once 'PHPUnit/Framework.php';
require_once '../code.php';

class FibonacciTest extends PHPUnit_Framework_TestCase 
{
	
	function __construct() {
			        }
	
	public function test_find_factors()
    {
		$this->assertEquals( expected, actual,  "ERROR message" );
	}
}

?>