<?php

require_once 'PHPUnit/Framework.php';
require_once '../code.php';

class EulerTest extends PHPUnit_Framework_TestCase 
{
	
	function __construct() {
            $this->first_number  = EulerNumber(10);
            $this->second_number = EulerNumber(20);
            $this->third_number  = EulerNumber(35);
        }
	
	public function testEulerNumbers()
    {
		$this->assertEquals( 23, $this->first_number,  "We were looking for 23, but got $this->first_number" );
		$this->assertEquals( 78, $this->second_number, "We were looking for 78, but got $this->second_number" );
		$this->assertEquals( 258, $this->third_number,  "We were looking for 258, but got $this->third_number" );
	}
}

?>