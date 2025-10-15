def reverse_vowels(s)
    n = s.size
    l, r = 0, n - 1
    chars = s.chars
    vowels = "aeiouAEIOU".chars
    
    while l < r
        l += 1 while l < r && !vowels.include?(chars[l])
            
        r -= 1 while r > l && !vowels.include?(chars[r])
            
        
        chars[l], chars[r] = chars[r], chars[l]

        l += 1
        r -= 1

    end

    chars.join
end