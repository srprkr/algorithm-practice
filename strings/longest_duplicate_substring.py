class Solution:
    def longestDupSubstring(self, s: str) -> str:
        l = 0
        r = 1
        res = ""
        n = len(s)

        while r < n:
            if s[l:r] in s[l+1:]:
        
                if r - l > len(res):
                    res = s[l:r]
                r+=1
                continue
            l+=1
            if l == r:
                r+=1
        return res    