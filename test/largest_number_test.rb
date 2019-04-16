require 'minitest/autorun'
require 'minitest/pride'
require './lib/largest_number'
require 'pry'

class LargestNumberTest < Minitest::Test
  def setup
    @ln = LargeNumber.new
  end

  def test_it_can_solve_for_two_single_digit_numbers_descending
    input = [9, 2]

    assert_equal 92, @ln.result(input)
  end

  def test_it_can_solve_for_two_single_digit_numbers_ascending
    input = [2, 9]

    assert_equal 92, @ln.result(input)
  end

  def test_it_can_solve_for_a_single_digit_and_a_double_digit_number_ascending
    input = [9, 50]

    assert_equal 950, @ln.result(input)
  end

  def test_it_can_solve_the_sample_case
    input = [50, 2, 1, 9]

    assert_equal 95021, @ln.result(input)
  end

  def test_it_can_solve_another_complicated_case
    input = [60, 500, 2, 1, 9]

    assert_equal 96050021, @ln.result(input)
  end

  def test_it_can_solve_with_same_first_number
    input = [61, 60, 2, 1, 8]

    assert_equal 8616021, @ln.result(input)
  end

  def test_it_can_solve_same_first_with_different_lengths
    input = [50, 500]

    assert_equal 50500, @ln.result(input)
  end

  def test_it_can_solve_with_duplicates
    input = [50, 50, 2, 1, 8]

    assert_equal 8505021, @ln.result(input)
  end

  def test_it_can_find_all_nums_with_a_specific_digit_at_a_specific_index
    input = [61, 66, 76, 86, 68, 12]

    assert_equal [66, 76, 86], @ln.select_nums_with(input, 6, 1)
  end

  def test_it_can_create_an_array_with_nil_at_a_given_position
    assert_equal [9, 8, nil, 7, 6, 5, 4, 3, 2, 1, 0], @ln.array_with_nil_at(7)
  end
end
