#!/usr/bin/env ruby -wKU

require "test/unit"

require "../code.rb"

class TestCodeRb < Test::Unit::TestCase
  def test_get_primes_below_ten
    simple_array = [2, 3, 5, 7]
    assert_equal(simple_array, get_array_of_primes_in_range(1, 10))
  end
end