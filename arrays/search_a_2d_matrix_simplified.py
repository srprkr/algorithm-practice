class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        return target in sum(matrix, [])
    