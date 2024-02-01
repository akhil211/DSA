def palindrome?(string)
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false
    end

    i += 1
  end

  return true
end

def longest_palindrome(string)
	
	longest = nil
	string.chars.each_index do |idx|	
		i = 1
		until i > string.length
			substring = string.slice(idx, i)
			longest = substring if palindrome?(substring) && (longest.nil? || substring.length > longest.length)
			i += 1
		end
	end
	puts longest
end

longest_palindrome('hello madam')
