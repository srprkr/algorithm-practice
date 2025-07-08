class Solution:
    def findOrder(self, numCourses: int, prerequisites: List[List[int]]) -> List[int]:
        adj = [[] for _ in range(numCourses)]
        in_degree = [0] * numCourses

        for c, pre in prerequisites:
            in_degree[c] += 1
            adj[pre].append(c)

        queue = deque([i for i in range(numCourses) if in_degree[i] == 0])
        result = []

        while queue:
            node = queue.popleft()
            result.append(node)
            for n in adj[node]:
                in_degree[n] -= 1
                if in_degree[n] == 0:
                    queue.append(n)

        return result if len(result) == numCourses else []