# Instructions:

# Given two strings s and t of lengths m and n respectively, return the minimum window

# of s such that every character in t (including duplicates) is included in the window. If there is no such substring, return the empty string "".

# The testcases will be generated such that the answer is unique.

 

# Example 1:

# Input: s = "ADOBECODEBANC", t = "ABC"
# Output: "BANC"
# Explanation: The minimum window substring "BANC" includes 'A', 'B', and 'C' from string t.

# Example 2:

# Input: s = "a", t = "a"
# Output: "a"
# Explanation: The entire string s is the minimum window.

# Example 3:

# Input: s = "a", t = "aa"
# Output: ""
# Explanation: Both 'a's from t must be included in the window.
# Since the largest window of s only has one 'a', return empty string.

 

# Constraints:

#     m == s.length
#     n == t.length
#     1 <= m, n <= 105
#     s and t consist of uppercase and lowercase English letters.

# Code:
def min_window(s, t)
    need = Hash.new(0)
    t.each_char { |char| need[char] += 1 }
    window = Hash.new(0)
    left = 0
    right = 0
    valid = 0
    min_len = Float::INFINITY
    start = 0

    while right < s.size
      c = s[right]
      right += 1
      if need.key?(c)
        window[c] += 1
        valid += 1 if window[c] == need[c]
      end

      while valid == need.size
        if right - left < min_len
          min_len = right - left
          start = left
        end
        d = s[left]
        left += 1
        if need.key?(d)
          valid -= 1 if window[d] == need[d]
          window[d] -= 1
        end
      end
    end

    min_len == Float::INFINITY ? "" : s[start, min_len]
end