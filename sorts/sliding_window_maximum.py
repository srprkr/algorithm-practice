def max_sliding_window(nums, k)
    if not nums or k == 0:
        return []
    
    result = []

    for left in range(len(nums) - k + 1):
        window = nums[left:left + k]
        result.append(max(window))
    
    return result