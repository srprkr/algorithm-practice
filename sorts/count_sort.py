# counting sort
class Solution:
    def counting_sort(self, arr, min_value, max_value):
        range_value = max_value - min_value + 1
        aux = [0] * range_value

        for num in arr:
            aux[num - min_value] += 1

        for i in range(1, len(aux)):
            aux[i] += aux[i - 1]

        sorted_arr = [0] * len(arr)
        for num in reversed(arr):
          index = num - min_value
            sorted_arr[aux[index] - 1] = num
            aux[num] -= 1

        return sorted_arr

    def sortArray(self, nums: List[int]) -> List[int]:
        if not nums:
          return nums
        return self.counting_sort(nums, min(nums), max(nums))