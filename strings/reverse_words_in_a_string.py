class Solution:
    def reverseWords(self, s: str) -> str:
        output = []
        arr = s.strip().split()
        for word in arr:
            output.insert(0, word)    
        return " ".join(output)