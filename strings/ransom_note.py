class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:
        # Create character frequency dictionary
        magazine_chars = {}
        for c in magazine:
            magazine_chars[c] = magazine_chars.get(c, 0) + 1
            
        # Check if we have enough characters
        for c in ransomNote:
            if c not in magazine_chars or magazine_chars[c] == 0:
                return False
            magazine_chars[c] -= 1
            
        return True