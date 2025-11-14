class Solution:
    def findTheDifference(self, s: str, t: str) -> str:
        count = {}
        for chr in s + t:
            count[chr] = count.get(chr, 0) + 1
        
        for chr, freq in count.items():
            if freq % 2 != 0:
                return chr