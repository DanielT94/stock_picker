def stock_picker(prices)
  lowest_price = prices[0]
  lowest_index = 0
  profit = 0
  days = [0, 0]

  prices.each_with_index do |price, index|
    if price < lowest_price
      lowest_price = price
      lowest_index = index
      next
    end

    if price - lowest_price > profit
      profit = price - lowest_price
      days = [lowest_index, index]
    end
  end

  days
end

array = [17, 3, 6, 9, 15, 8, 5, 1, 10]

p stock_picker(array)
