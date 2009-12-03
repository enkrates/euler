#!/usr/bin/env ruby

require "test/unit"

require '../code.rb'

class TestOneRb < Test::Unit::TestCase
  
  def setup
    @E1 = EulerNumber.new(10)
    @E2 = EulerNumber.new(20)
    @E3 = EulerNumber.new(35)
  end
  
  def test_ten
    assert_equal(23, @E1.sum_of_natural_multiples_of_three_or_five)
  end
  
  def test_twenty
    assert_equal(78, @E2.sum_of_natural_multiples_of_three_or_five)
  end
  
  def test_a_hundred
    assert_equal(258, @E3.sum_of_natural_multiples_of_three_or_five)
  end
  
end
