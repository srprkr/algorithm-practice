class Solution:
    def checkIfPrerequisite(self, numCourses: int, prerequisites: List[List[int]], queries: List[List[int]]) -> List[bool]:
        is_reachable = [[False] * numCourses for _ in range(numCourses)]
        
        for u, v in prerequisites:
            is_reachable[u][v] = True
        
        for i in range(numCourses):
            for j in range(numCourses):
                if not is_reachable[j][i]:
                    continue
                for k in range(numCourses):
                    if is_reachable[i][k]:
                        is_reachable[j][k] = True
        
        return [is_reachable[u][v] for u, v in queries]