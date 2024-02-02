def two_sum(arr, target)
  # Using two pointer apprach
  i = 0
  n = arr.length - 1
  result = []
  sorted_arr = arr.sort
  
  while (i < n) do
    sum = sorted_arr[i] + sorted_arr[n]
    if sum == target
      result << [sorted_arr[i], sorted_arr[n]]
      i += 1
    elsif sum < target
      i += 1
    elsif sum > target
      n -= 1
    end
  end
  
  print result
end

two_sum([2, 7, 11, 15], 9)
