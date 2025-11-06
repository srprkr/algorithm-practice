class Solution:
    def isIsomorphic(self, s: str, t: str) -> bool:
        def checkMapping(s, t):
            mapping = {}
            for s_char, t_char in zip(s, t):
                if s_char in mapping and mapping[s_char] != t_char:
                    return False
                mapping[s_char] = t_char
            return True
        
        return checkMapping(s, t) and checkMapping(t, s)