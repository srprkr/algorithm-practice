class Solution:
    def nextSmaller(self, heights):
        n = len(heights)

        nextS = [n] * n
        st = []

        for i in range (n):
            while st and heights[i] < heights[st[-1]]:

                nextS[st.pop()] = i
            st.append(i)

        return nextS

    def prevSmaller(self, heights):
        n = len(heights)

        prevS = [-1] * n
        st = []

        for i in range(n):
            while st and heights[i] < heights[st[-1]]:
                st.pop()
            if st:
                prevS[i] = st[-1]
            st.append(i)

        return prevS
    
    def largestRectangleArea(self, heights: List[int]) -> int:
        prevS = self.prevSmaller(heights)
        nextS = self.nextSmaller(heights)
        maxArea = 0

        for i in range(len(heights)):
            width = nextS[i] - prevS[i] - 1
            area = heights[i] * width
            maxArea = max(maxArea, area)

        return maxArea