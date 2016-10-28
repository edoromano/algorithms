def max_profit(prices)
  lowest_value = prices[0]
  current_profit = 0
  (1..prices.size-1).each do |e|
    if lowest_value > prices[e]
      lowest_value = prices[e]
    elsif current_profit < (prices[e] - lowest_value)
      current_profit = (prices[e] - lowest_value)
    end
  end
  return current_profit
end
#prices = [7, 1, 5, 3, 6, 4]
prices = [7, 6, 4, 3, 1]
p max_profit(prices)
