class LargeNumber
  def result(arr)
    swapped = true

    while swapped
      swapped = false
      (arr.length - 2).times do |index|
        current  = arr[index].to_s
        next_num = arr[index + 1].to_s
        if current[0] < next_num[0]
          arr[index]   = next_num
          arr[index+1] = current
          swapped = true
        elsif 
        end
      end
    end
#    arr.sort_by do |num|
#      num.to_s[0]
#    end.reverse.join.to_i
  end
end
