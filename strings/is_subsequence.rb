def is_subsequence(s, t)
    s_idx = 0
    
    t.each_char do |char|

        if s_idx < s.size && char == s[s_idx]
            s_idx += 1
        end
    end
    
    s_idx == s.size
end