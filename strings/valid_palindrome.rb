def is_palindrome(s)
    return true if s.strip.empty?
    
    l = 0
    r = s.length - 1
    
    while r >= l
        if s[l].match?(/[[:alnum:]]/) && s[r].match?(/[[:alnum:]]/)
            if s[l].downcase == s[r].downcase
                l += 1
                r -= 1
                next
            else
                return false
            end
        else
            l += 1 if !s[l].match?(/[[:alnum:]]/)
            r -= 1 if !s[r].match?(/[[:alnum:]]/)
        end
    end
    
    true
end