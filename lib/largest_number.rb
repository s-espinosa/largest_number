class LargeNumber
  def result(starting_set, position = 0)
    return [] if starting_set == []

    final_array  = []
    final_array << numbers_with_no_remaining_digits(starting_set, position)
    final_array << numbers_with_remaining_digits(starting_set, position)

    final_array.flatten.join("").to_i
  end

  private
  def numbers_with_no_remaining_digits(starting_set, position)
    starting_set.find_all do |number|
      number.to_s[position] == nil
    end
  end

  def numbers_with_remaining_digits(starting_set, position)
    temp_array = []
    9.downto(0) do |lead_digit|
      subset      = select_nums_with(starting_set, lead_digit, position)
      temp_array << result(subset, position + 1)
    end
    temp_array
  end

  def select_nums_with(nums, digit, position)
    nums.find_all do |num|
      num.to_s[position] == digit.to_s
    end
  end
end
