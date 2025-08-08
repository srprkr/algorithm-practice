"""
# Definition for a Node.
class Node:
    def __init__(self, val = 0, neighbors = None):
        self.val = val
        self.neighbors = neighbors if neighbors is not None else []
"""
class Solution:
    def cloneGraph(self, node: 'Node') -> 'Node':
        self.created = {}  # Hash map to track created nodes
        return self.dfs(node)
    
    def dfs(self, node: 'Node') -> 'Node':
        # Base cases
        if not node:
            return None
        if node in self.created:
            return self.created[node]
            
        # Create new node and store in hash map
        clone = Node(node.val)
        self.created[node] = clone
        
        # Recursively clone neighbors
        clone.neighbors = [self.dfs(neigh) for neigh in node.neighbors]
        return clone