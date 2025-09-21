# LeetCode: Best Time to Buy and Sell Stock - https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/
#
# Notes: The strategy is to keep track of the lowest buy price seen so far.
# For each price, we simulate selling at that point and calculate the profit.
# We update the profit only when a higher profit is found.

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  profit = 0
  buy_position = prices[0]

  prices.each do |price|
    if price < buy_position
      buy_position = price
    end

    operation_value = price - buy_position

    if operation_value > profit
      profit = operation_value
    end
  end

  profit
end