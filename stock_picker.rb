def stock_picker(stocks)
  buy = 0
  sell = 0
  profit = 0
  stocks.each_with_index do |stock1, index1|
    stocks.each.with_index(index1) do |stock2, index2|
      if stock1 - stock2 > profit
        profit = stock1 - stock2
        buy = index1 + 1
        sell = index2 + 1
      end
    end
  end
  p [buy, sell]
end

stock_picker([10, 9, 8, 7, 6, 5, 1, 4, 4, 3, 3])

# => [1, 7]