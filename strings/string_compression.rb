# @param {Character[]} chars
# @return {Integer}
def compress(chars)
	left = 0
    right = 1
    initial_len = chars.length
	
	while right < initial_len
		match_count = 0
		match = chars[left]
		
		if chars[right] != chars[left]
			# logic for slicing/rewriting array
            chars - [left..right] #taking out a matchset

            # add the found match pair back in
            chars.push(chars[left])
            chars.push(match_count) if match_count > 1
			
			left = right
			right = left + 1
        else
            
        match_count += 1
        right += 1
        end
	end
    chars - [0..initial_len]

end