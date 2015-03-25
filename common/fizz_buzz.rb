
def fizzbuzz(array)
	array.each do |number|
		if number % 15 == 0
			 puts 'fizzbuzz'
		elsif number % 3 == 0
			 puts'fizz'
		elsif number % 5 == 0
			 puts 'buzz'
		else 
			 puts number
		end
	end		
end

fizzbuzz([1,2,3,4,5,6,7,8,15])