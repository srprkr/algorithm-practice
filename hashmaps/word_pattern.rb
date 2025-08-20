# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
    p1 = pattern.chars
    p2 = s.split(" ")
    return false if p1.size != p2.size
    hash = {}

    p1.each_with_index do |c, idx|
        ptr = "pat_#{c}"
        st = "word_#{p2[idx]}"
        if hash[ptr].nil? && hash[st].nil?
            hash[ptr] = idx
            hash[st] = idx
        elsif(!hash[ptr].nil? && !hash[st].nil? && hash[ptr] == hash[st])
            next
        else
            return false
        end
    end
    true
end