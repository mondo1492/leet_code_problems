def max_profit(prices)
  return 0 if prices.empty?
  current_max_diff = 0
  current_min_num = prices[0]
  prices[1..-1].each do |price|
    if price - current_min_num > current_max_diff && price - current_min_num > 0
      current_max_diff = price - current_min_num
    end
    if price < current_min_num
      current_min_num = price
    end
  end
  current_max_diff
end
prices = [7, 6, 4, 3, 1]
p max_profit(prices)

def max_profit(prices)
    return 0 if prices.length <= 1
    current_low = prices[0]
    current_high = prices[0]
    profit = 0
    prices[1..-1].each do |price|
        if price >= current_high
            current_high = price
        else
            profit += current_high - current_low
            current_low, current_high = price, price
        end
    end
    profit + current_high - current_low
end
