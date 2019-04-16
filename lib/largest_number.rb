class LargeNumber
  def result(starting_set, position = 0)
    return [] if starting_set == []

    final_array = []

    starting_set.each do |number|
      final_array << number if number.to_s[position] == nil
    end

    9.downto(0) do |lead_digit|
      subset  = select_nums_with(starting_set, lead_digit, position)
      if subset.length == 1
        final_array << subset[0]
      else
        final_array << result(subset, position + 1)
      end
    end

    final_array.flatten.join("").to_i
  end

  def select_nums_with(nums, digit, position)
    nums.find_all do |num|
      num.to_s[position] == digit.to_s
    end
  end
end
