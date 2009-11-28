#!/usr/bin/env ruby

require "test/unit"

require "../code.rb"

class TestCodeRb < Test::Unit::TestCase
  def test_get_sum_of_primes_up_to
    assert_equal(17, get_sum_of_primes_up_to(10))
  end
end