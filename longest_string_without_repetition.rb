def longest_string(str)
  temp = []
  str.chars.each do |chr|
    temp.include?(chr) ? break : temp << chr 
  end
  return temp.size
end

puts longest_string('abcabcbb')
