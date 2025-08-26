
def product_except_self(nums)
  n = nums.size
  result = [1] * n

  # Calculate prefix products
  prefix = 1
  (0...n).each do |i|
    result[i] = prefix
    prefix *= nums[i]
  end

  # Calculate suffix products and multiply
  suffix = 1
  (n-1).downto(0) do |i|
    result[i] *= suffix
    suffix *= nums[i]
  end