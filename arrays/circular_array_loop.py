class Solution:
    def circularArrayLoop(self, nums: List[int]) -> bool:
        n = len(nums)
        visited = [False] * n

        for start in range(n):
            if visited[start]:
                continue
            direction = nums[start] > 0
            idx = start
            path = [False] * n

            while True:
                if (nums[idx] > 0) != direction:
                    break

                next_idx = (idx + nums[idx]) % n

                if next_idx == idx:
                    break

                if path[next_idx]:
                    return True

                path[idx] = True
                visited[idx] = True

                idx = next_idx

        return False