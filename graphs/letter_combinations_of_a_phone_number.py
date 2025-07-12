class Solution:
    def __init__(self):

        self.digit_to_char = {
            '2': 'abc', '3': 'def', '4': 'ghi', '5': 'jkl', 
            '6': 'mno', '7': 'pqrs', '8': 'tuv', '9': 'wxyz'
        }

        self.ans = []

    def letterCombinations(self, digits: str) -> List[str]:
        if not digits:
            return []


        def dfs(start_index, path):
            if start_index == len(digits):
                self.ans.append(path)
                return

            for char in self.digit_to_char[digits[start_index]]:
                dfs(start_index + 1, path + char)

        dfs(0, "")

        return self.ans 