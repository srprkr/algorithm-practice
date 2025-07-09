from collections import deque

def jump(nums)
    if len(nums) <= 1:
        return 0

    queue = deque([(0, 0)])
    visited = set([0])

    while queue:
        index, jumps = queue.popleft()
        max_jump = min(index + nums[index], len(nums) - 1)
        for next_index in range(index + 1, max_jump + 1):
            if next_index == len(nums) - 1:
                return jumps + 1
            if next_index not in visited:
                queue.append((next_index, jumps + 1))
                visited.add(next_index)