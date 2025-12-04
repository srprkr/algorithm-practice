def shortest_to_char(s, c)
    ans = []
    hash = { c => -1 }
    str = s.chars

    str.each_with_index do |cur_letter, cur_idx|
        if cur_letter == c
            hash[cur_letter] = cur_idx
            ans << 0
        else
            left = hash[c] == -1 ? str.index(c) : cur_idx - hash[c]
            right = str[cur_idx..].index(c) || left
            ans << [left, right].min
        end
    end