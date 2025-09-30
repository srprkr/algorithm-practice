# @param {String} s
# @param {String} p
# @return {Integer[]}
def find_anagrams(s, p)
    match_indexes = []
    
    left = 0
    right = p.size - 1
    while right <= s.size
        if s[left..right].chars.sort == p.chars.sort
            match_indexes << left
        end
        left += 1
        right += 1
    end

    match_indexes
end