#!/usr/bin/env ruby -wKU

require "test/unit"

require "../code.rb"

class TestCodeRb < Test::Unit::TestCase
  def test_fibonacci_numbers_to_ten
    assert_equal([1, 2, 3, 5, 8, 13, 21, 34, 55, 89], fibonacci_numbers_up_to(100))
  end
  
  def test_fibonacci_numbers_to_one_thousand
    assert_equal([1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987], fibonacci_numbers_up_to(1000))
  end
  
  def test_only_evens_left
    array_of_numbers_one_through_fifteen = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
    assert_equal([2, 4, 6, 8, 10, 12, 14], find_even_numbers_in_an_array(array_of_numbers_one_through_fifteen))
  end
  
  def test_add_up_an_array
    array_of_numbers_one_through_fifteen = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
    assert_equal(120, add_an_array(array_of_numbers_one_through_fifteen))
  end
end