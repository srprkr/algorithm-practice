class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        pointer1 = 0
        pointer2 = len(nums) - 1
        result = []

        sort_array = nums.sort()

        while pointer1 < pointer2:
            current_sum = sort_array[pointer1] + sort_array[pointer2]
            if current_sum == target:
                result.append(index(arr[pointer1])) 
                result.append(index(arr[pointer2]))
                return result
            elif current_sum < target:
                pointer1 += 1
            else:
                pointer2 -= 1

        return []