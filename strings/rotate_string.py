class Solution:
    def rotateString(self, s: str, goal: str) -> bool:
        if len(s) != len(goal):
            return False
            
        arr = list(s)
        goal_arr = list(goal)
        for _ in range(len(arr)):
            arr.append(arr.pop(0))
            if arr == goal_arr:
                return True
                
        return False
