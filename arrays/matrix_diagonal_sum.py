class Solution:
    def diagonalSum(self, mat: List[List[int]]) -> int:
        n = len(mat)
        total = 0
    
        for i in range(n):
            total += mat[i][i]
            total += mat[i][n - 1 - i]  
    
        if n % 2 == 1:
            center = n // 2
            total -= mat[center][center]
    
        return total