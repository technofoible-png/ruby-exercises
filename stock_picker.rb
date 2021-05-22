# stock_picker
# takes in array of stock prices, representing different days
# returns a pair of days representing the best day to buy and best day to sell

# stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1, 4] # for a profit of $15 - 3 == $ 12

def stock_picker(days)
  result = []
  #find best day to sell
  high_price = days.max
  sell_on = days.index(high_price)

  #be careful about best price on first day
  if sell_on == 0 
    new_days = days[1..10]
    high_price = new_days.max
    sell_on = days.index(high_price)
  end
  result.unshift(sell_on)

  #find best day to buy, before sell day
  buy_days = days[0..sell_on]
  low_price = buy_days.min
  buy_on = days.index(low_price)
  result.unshift(buy_on)
  
  return result
end


print stock_picker([1, 3, 5, 9]) # [0, 3]
print stock_picker([3, 1, 9, 5]) # [1, 2]
print stock_picker([9, 3, 1, 5, 7]) # [2, 4]