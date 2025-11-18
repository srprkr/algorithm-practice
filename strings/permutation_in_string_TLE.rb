# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_inclusion(s1, s2)
    win_len = s1.size
    left, right = 0, win_len

    while right < s2.size + 1
        if s2[left...right].chars.sort.join == s1.chars.sort.join
            return true
        else
            left, right = left + 1, right + 1
        end
    end
    
    false
end