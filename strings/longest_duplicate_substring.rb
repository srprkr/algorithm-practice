# @param {String} s
# @return {String}
def longest_dup_substring(s)
    l = 0
    r = 1
    res = ""

    while r < s.size
        substr = s[l...r]
        if s[(l + 1)..].include?(substr)
            res = substr if r - l > res.size
            r += 1
            next
        end

        l += 1
        r += 1 if l == r
    end

    res
end