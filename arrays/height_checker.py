class Solution:
    def heightChecker(self, heights: List[int]) -> int:
        sortedHeights = sorted(heights)
        count = 0
        for i in range(len(heights)):
            if sortedHeights[i] != heights[i]:
                count += 1
        return count