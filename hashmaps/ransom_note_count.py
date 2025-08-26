class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:
      ransom_count = {}

      for char in ransomNote:
          ransom_count[char] = ransom_count.get(char, 0) + 1

      for char, needed in ransom_count.items():
          if magazine.count(char) < needed:
              return False

      return True