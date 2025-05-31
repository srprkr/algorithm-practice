# TIME LIMIT EXCEEDED - approach too naive
class Solution:
    def largestRectangleArea(self, heights: List[int]) -> int:
        res = 0
        n = len(heights)

        for i in range(n):
            curr = heights[i]

            j = i - 1
            while j >= 0 and heights[j] >= heights[i]:
                curr += heights[i]
                j -= 1

            j = i + 1
            while j < n and heights[j] >= heights[i]:
                curr += heights[i]
                j += 1

            res = max(res, curr)
            
        return res    



   
   
    # loop each num
    # add 1 to end of stack

    # if next num is bigger
    # +1 end of stack

    # if next num is smaller or array ends
    # stack.last

    # stack x stack.last