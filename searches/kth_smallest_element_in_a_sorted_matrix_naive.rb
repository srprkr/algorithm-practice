# @param {Integer[][]} matrix
# @param {Integer} k
# @return {Integer}
def kth_smallest(matrix, k)
    solution = []
    matrix.each do |arr|
        arr.each do |num|
            solution.push(num)
        end
    end
    solution.sort![k - 1]
end