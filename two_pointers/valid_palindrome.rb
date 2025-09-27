# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    l, r = 0, s.size - 1

    while l < r
    while l < r && !s[l].match?(/[a-zA-Z0-9]/)
        l += 1
    end

    while l < r && !s[r].match?(/[a-zA-Z0-9]/)
        r -= 1
    end

    if s[l].downcase != s[r].downcase
        return false
    end

    l += 1
    r -= 1
    end

    true
end