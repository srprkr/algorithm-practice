class Solution:
    def shortestToChar(self, s: str, c: str) -> List[int]:
        ans = []
        last_pos = -1

        for cur_idx, cur_letter in enumerate(s):
            if cur_letter == c:
                last_pos = cur_idx
                ans.append(0)
            else:
                left = cur_idx - last_pos if last_pos != -1 else float('inf')

                right = float('inf')
                for i in range(cur_idx + 1, len(s)):
                    if s[i] == c:
                        right = i - cur_idx
                        break
                    
                ans.append(min(left, right))

        return ans