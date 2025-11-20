class Solution:
    def longestPalindrome(self, s: str) -> int:
      char_count = {}
      
      # Count frequency of each character
      for ch in s:
          char_count[ch] = char_count.get(ch, 0) + 1
      
      length = 0
      has_odd = False
      
      # For each character count
      for count in char_count.values():
          if count % 2 == 0:
              length += count
          else:
              length += count - 1
              has_odd = True
      
      # If we have any odd counts, we can place one character in the middle
      if has_odd:
          length += 1
      
      return length