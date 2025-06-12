# quick sort
class Solution:
    def quicksort(self, nums, left, right):
        if left < right:
            # pivot index
            pi = self.partition(nums, left, right)

        quicksort(nums, left, pi)
        quicksort(nums, pi + 1, right)

    def partition(self, nums, left, right):
        pivot = nums[(left + right) // 2]  # setting it to middle element
        i = left - 1
        j = right + 1

        while True:
            while True:
                i += 1
                if nums[i] >= pivot:
                    break
                
            while True:
                j -= 1
                if nums[j] <= pivot:
                    break

            if i >= j:
                return j

            nums[i], nums[j] = nums[j], nums[i]

    def sortArray(self, nums: List[int]) -> List[int]:
        self.quicksort(nums, min(nums), max(nums))