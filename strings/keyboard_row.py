class Solution:
    def findWords(self, words: List[str]) -> List[str]:
        keyboard = ["qwertyuiop", "asdfghjkl", "zxcvbnm"]
        res = []

        for word in words:
            for row in keyboard:
                not_found = False

                for char in word:
                    if char.lower() not in row:
                        not_found = True
                        break

                if not not_found:
                    res.append(word)
                    break
                
        return res