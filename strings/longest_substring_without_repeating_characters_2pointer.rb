require 'set'

def length_of_longest_substring(s)
    char_set = Set.new
    left = 0
    max_len = 0

    s.chars.each_with_index do |char, right|
      while char_set.include?(char)
        char_set.delete(s[left])
        left += 1
      end
      char_set.add(char)
      max_len = [max_len, right - left + 1].max
    end

    max_len
end