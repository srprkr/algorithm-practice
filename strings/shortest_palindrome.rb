def shortest_palindrome(s)
    i = 0
    n = s.size

    s.reverse_each.each_char do |c|
        i += 1 if c == s[i]
    end
    
    return s if i == n

    sub = s[i..]

    sub.reverse + shortest_palindrome(s[0...i]) + sub
end