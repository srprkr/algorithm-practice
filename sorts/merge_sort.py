# merge sort

def merge_sort(arr, start, end):
    if start >= end:
        return

    mid = (start + end) // 2

    merge_sort(arr, start, mid)
    merge_sort(arr, mid + 1, end)

    merge(arr, start, mid, end)

def merge(arr, start, mid, end):

    result = []

    i = start
    j = mid + 1

    while i <= mid and j <= end:
        if arr[i] <= arr[j]:
            result.append(arr[i])
            i += 1
        else:
            result.append(arr[j])
            j += 1

    while i <= mid:
        result.append(arr[i])
        i += 1

    while j <= end:
        result.append(arr[j])
        j += 1

    for k in range(len(result)):
        arr[start + k] = result[k]

class Solution:
    def sortArray(self, nums: List[int]) -> List[int]:
        merge_sort(nums, 0, len(nums) - 1)
        return nums