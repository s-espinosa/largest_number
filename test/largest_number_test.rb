require 'minitest/autorun'
require 'minitest/pride'
require './lib/largest_number'

class LargestNumberTest < Minitest::Test
  def test_it_can_solve_for_two_single_digit_numbers_descending
    ln = LargeNumber.new
    input = [9, 2]

    assert_equal 92, ln.result(input)
  end

  def test_it_can_solve_for_two_single_digit_numbers_ascending
    ln = LargeNumber.new
    input = [2, 9]

    assert_equal 92, ln.result(input)
  end

  def test_it_can_solve_for_a_single_digit_and_a_double_digit_number_ascending
    ln = LargeNumber.new
    input = [9, 50]

    assert_equal 950, ln.result(input)
  end

  def test_it_can_solve_the_sample_case
    ln = LargeNumber.new
    input = [50, 2, 1, 9]

    assert_equal 95021, ln.result(input)
  end

  def test_it_can_solve_another_complicated_case
    ln = LargeNumber.new
    input = [60, 500, 2, 1, 9]

    assert_equal 96050021, ln.result(input)
  end

  def test_it_can_solve_with_same_first_number
    ln = LargeNumber.new
    input = [60, 61, 2, 1, 9]

    assert_equal 9616021, ln.result(input)
    input = [61, 60, 2, 1, 9]

    assert_equal 9616021, ln.result(input)
  end

  def test_it_can_sort_two_digit_numbers_with_same_first_number
    ln = LargeNumber.new

    input = 

    assert_equal expected, actual
  end

end
