class Solution:
    def isPalindrome(self, s: str) -> bool:
        if not s.strip():
            return True

        l = 0
        r = len(s) - 1

        while r >= l:
            if s[l].isalnum() and s[r].isalnum():
                if s[l].lower() == s[r].lower():
                    l += 1
                    r -= 1
                    continue
                else:
                    return False

            else:
                if not s[l].isalnum():
                    l += 1
                
                if not s[r].isalnum():
                    r -= 1

        return True