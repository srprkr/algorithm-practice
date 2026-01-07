class Solution:
    def transpose(self, matrix: List[List[int]]) -> List[List[int]]:
        m = len(matrix)
        n = len(matrix[0])
        
        t_matrix = [[0] * m for _ in range(n)]
        
        for i, row in enumerate(matrix):
            for j, col in enumerate(row):
                t_matrix[j][i] = col
        
        return t_matrix