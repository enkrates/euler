#!/usr/bin/env ruby

require "test/unit"

require "../code.rb"

class TestCodeRb < Test::Unit::TestCase
  def test_nine
    assert_equal([1, 3, 9], find_factors_of_an_integer(9))
  end
  
  def test_thirty
    assert_equal([1, 2, 3, 5, 6, 10, 15, 30], find_factors_of_an_integer(30))
  end
  
  def test_primes_in_an_array
    simple_array = [1, 2, 3, 4, 6, 7]
    assert_equal([2, 3, 7], find_primes_in_an_array(simple_array))
  end
  def test_primes_in_a_larger_array
    simple_array = [1, 2, 3, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]
    assert_equal([2, 3, 7, 11, 13, 17], find_primes_in_an_array(simple_array))
  end
  
  def test_get_correct_answer_from_euler    
    factors = find_factors_of_an_integer(13195) 
    assert_equal([5, 7, 13, 29], find_primes_in_an_array(factors))    
  end
end