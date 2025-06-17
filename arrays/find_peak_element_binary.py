def find_peak_element(nums):
    left = 0
    right = len(nums) - 1

    target = 0
    while left < right:
        mid = (left + right) // 2

        if nums[mid] < nums[mid + 1]:
          left = mid + 1
        else:
          right = mid

    return left