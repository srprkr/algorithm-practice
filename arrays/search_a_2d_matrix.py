class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        # flatten the matrix
        flat = []

        for row in range(len(matrix)):
            for num in range(row):
                flat.append(num)

        # set right and left
        left = 0
        right = len(flat) - 1

        while left <= right:
            if target not in flat:
                return False

            mid = (left + right) / 2
            if flat[mid] == target: 
                return flat[mid] == target
            elif flat[mid] < target:
                left = mid + 1
            else:
                right = mid - 1