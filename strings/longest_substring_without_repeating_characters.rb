def length_of_longest_substring(s)
    return 0 if s.empty?
    seen = {}
    max_len = 0
    start = 0

    s.chars.each_with_index do |char, i|
      if seen[char] && seen[char] >= start
        start = seen[char] + 1
      end

      seen[char] = i
      max_len = [max_len, i - start + 1].max
    end

    max_len
end