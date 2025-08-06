# @param {Integer[]} fruits
# @param {Integer[]} baskets
# @return {Integer}
def num_of_unplaced_fruits(fruits, baskets)
    i = 0
    while i < fruits.size
        baskets.each_with_index do |basket, j|
            if fruits[i] <= basket
                baskets.delete_at(j)
                break
            end
        end
        i += 1
    end
    baskets.size
end