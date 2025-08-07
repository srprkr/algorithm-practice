# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    return 0 if prices.empty?

    max_profit = 0
    min_so_far = prices[0]

    prices.each do |price|
      min_so_far = [min_so_far, price].min

      current_profit = price - min_so_far

      max_profit = [max_profit, current_profit].max
    end
  max_profit
end