class Solution:
    def findTheDifference(self, s: str, t: str) -> str:
        res = 0
        ts = s + t
        for ch in ts:
            res ^= ord(ch)
        return chr(res)