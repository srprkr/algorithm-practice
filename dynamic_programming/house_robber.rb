# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
    prev = 0
    curr = 0
    nums.each do |n|
      temp = curr
      curr = [curr, prev + n].max
      prev = temp 
    end
    curr
end