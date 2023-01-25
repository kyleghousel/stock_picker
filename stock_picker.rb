=begin
    
1. Create method stock_picker
2. Takes an array of stock prices
3. Iterates through array evaluating range between each day (index)
4. Returns pair of days that return highest range (best day to buy, sell)
5. Days start at 0
    
=end

def stock_picker(stonks)

    buy_sell = []
    
    stonks.each_with_index do |stock_price, index|
        #current day's stock price
        stock_price
        #remaining prices in range including current day
        stonks[index..]
        #current highest value in remaining days
        highest_val = stonks[index..].max
        #the day of the highest remaining value
        highest_idx = stonks[index..].each_with_index.max[1] + index
        #create new array subtracting current day's stock price from highest remaining value, then providing the current index (buy day) and index of highest remaining value (sell day)
        buy_sell << [highest_val - stock_price, index, highest_idx]
    end
    buy_sell
    p buy_sell.each_with_index.max[0]
end

stock_picker([17,3,6,9,15,8,6,1,10])
