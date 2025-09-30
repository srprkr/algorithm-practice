class Solution:
    def findAnagrams(self, s: str, p: str) -> List[int]:
        left = 0
        right = len(p) - 1
        match_indexes = []

        while right <= len(s) - 1:
            if sorted(s[left:right + 1]) == sorted(p):
                match_indexes.append(left)
            left += 1
            right += 1
            
        return match_indexes