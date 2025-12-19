class Solution:
    def isBoomerang(self, points: List[List[int]]) -> bool:
        p1, p2, p3 = points[0], points[1], points[2]
        
        cross_product = (p2[0] - p1[0]) * (p3[1] - p1[1]) - (p2[1] - p1[1]) * (p3[0] - p1[0])
        
        return cross_product != 0