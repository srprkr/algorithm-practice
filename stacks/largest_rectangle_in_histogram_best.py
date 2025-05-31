class Solution:
    def largestRectangleArea(self, heights: List[int]) -> int:
        n = len(heights)
        s = []
        res = 0

        for i in range(n):

            while s and heights[s[-1]] >= heights[i]:
                tp = s.pop()

                width = i if not s else i - s[-1] - 1

                res = max(res, heights[tp] * width)

            s.append(i)

        while s:
            tp = s.pop()
            width = n if not s else n - s[-1] - 1
            res = max(res, heights[tp] * width)

        return res