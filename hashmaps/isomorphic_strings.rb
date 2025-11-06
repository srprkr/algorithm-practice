# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
    return false if s.size != t.size
    check_mapping(s, t) && check_mapping(t, s)
end

def check_mapping(s, t)
    mapping = {}
    s.each_char.with_index do |s_char, i|
        t_char = t[i]
        return false if mapping.key?(s_char) && mapping[s_char] != t_char
        mapping[s_char] = t_char
    end
    true
end