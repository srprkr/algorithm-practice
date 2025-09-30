class Solution:
    def findAnagrams(self, s: str, p: str) -> List[int]:
        res = []
        hashmap = Counter(p)
        for i in range(len(s) - len(p) + 1):
            if Counter(s[i:i + len(p)]) == hashmap:
                res.append(i)
        return res