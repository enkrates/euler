#!/usr/bin/env ruby

require "test/unit"

require "../code.rb"

class TestCodeRb < Test::Unit::TestCase
  def test_count_factors_in_the_number_10
    assert_equal(4, count_factors_in_a_number(21))
  end
  def test_count_factors_in_the_number_28
    assert_equal(6, count_factors_in_a_number(28))
  end
  def test_return_first_triangle_number_with_6_factors
    assert_equal(28, return_first_triangle_number_with_the_following_number_of_factors(6))
  end
end