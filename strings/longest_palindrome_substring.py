class Solution:
    def longestPalindrome(self, s: str) -> str:
        if s == s[::-1]: return s

        window_len = 1
        start = 0
        for i in range(1, len(s)):
            if i - window_len >= 0 and s[i - window_len:i+1] == s[i - window_len:i+1][::-1]:
                start = i - window_len
                window_len += 1

            elif i - window_len >= 1 and s[i - window_len - 1:i + 1] == s[i - window_len - 1:i + 1][::-1]:
                start = i - window_len - 1
                window_len += 2

        return s[start: start + window_len]