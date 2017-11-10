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
