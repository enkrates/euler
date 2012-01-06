#!/usr/bin/env ruby

require "test/unit"

require '../code.rb'

class TestOneRb < Test::Unit::TestCase
  
  def setup
    @e1 = EulerNumber.new(10)
    @e2 = EulerNumber.new(20)
    @e3 = EulerNumber.new(35)
    @e4 = EulerNumber.new(1000)
  end
  
  def test_ten
    assert_equal(23, @e1.sum_of_natural_multiples_of_three_or_five)
  end
  
  def test_twenty
    assert_equal(78, @e2.sum_of_natural_multiples_of_three_or_five)
  end
  
  def test_a_hundred
    assert_equal(258, @e3.sum_of_natural_multiples_of_three_or_five)
  end
  
  def test_under_a_thousand
    assert_equal(233168, @e4.sum_of_natural_multiples_of_three_or_five)
  end
  
end
