#!/usr/bin/env ruby -wKU

require "test/unit"

require "../code.rb"

class TestOneRb < Test::Unit::TestCase
  def test_ten
    assert_equal(23, sum_of_natural_multiples_of_three_or_five(10))
  end
  def test_twenty
    assert_equal(78, sum_of_natural_multiples_of_three_or_five(20))
  end
  def test_a_hundred
    assert_equal(258, sum_of_natural_multiples_of_three_or_five(35))
  end
end
