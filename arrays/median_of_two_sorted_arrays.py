class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
        combined = sorted(nums1 + nums2)
        length = len(combined)
        middle = length // 2

        if length % 2 == 0:
            return (combined[middle] + combined[middle - 1]) / 2.0
        else:
            return combined[middle]