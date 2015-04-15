
def get_max_profit(stock_prices)
	local_min = stock_prices[0]
	local_max = stock_prices[1]
	max_profit_so_far = local_max - local_min

	stock_prices[2..stock_prices.length].each do |price|
		if price > local_min
			local_max = price
			price = local_max - local_min
			max_profit_so_far = price if price > max_profit_so_far
		end
	end
	max_profit_so_far
end

stock_prices = [100, 200, 300, 700, 50, 20, 40, 600]
puts get_max_profit(stock_prices)