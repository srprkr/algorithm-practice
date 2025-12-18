# @param {Integer[]} candy_type
# @return {Integer}
def distribute_candies(candy_type)
    max_allotted = candy_type.size / 2
    uniq_size = candy_type.uniq.size
    [uniq_size, max_allotted].min   
end