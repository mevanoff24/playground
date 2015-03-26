

def make_change(amount, coins)
	@cache = Array.new(amount+1) { |index| Array.new(coins.length, index.zero? ? 1 : nil)}
	@coins = coins
	do_count(amount, coins.length-1)
end

def do_count(number_of_cents, high)
	if number_of_cents < 0 || high < 0
		0
	elsif @cache[number_of_cents][high]
		@cache[number_of_cents][high]
	else
		@cache[number_of_cents][high] = do_count(number_of_cents - @coins[high], high) + do_count(number_of_cents, high-1)	
	end
end


 p make_change(1_00, [1,5,10,25])



