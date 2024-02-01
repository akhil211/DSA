def palindrome?(str)
  i = 0
  len = str.length
  while i < len
    return false if str[i] != str[(len - 1) - i]

    i += 1
  end
  return true
end

def longest_palindrome(str)
	longest = nil
	str.chars.each_index do |idx|
		i = 1
		until i > str.length
			substr = str.slice(idx, i)
			longest = substr if palindrome?(substr) && (longest.nil? || substr.length > longest.length)
			i += 1
		end
	end
	puts longest
end

longest_palindrome('hello madam')
