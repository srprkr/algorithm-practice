# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def max_sum_after_partitioning(arr, k)
    n = arr.length
    dp = Array.new(n + 1, 0)

    (1..n).each do |i|
        cur_max = 0
        (1..[k, i].min).each do |j|
            cur_max = [cur_max, arr[i - j]].max
            dp[i] = [dp[i], dp[i - j] + cur_max * j].max
        end
    end

    dp[n]
end