# Prime numbers in RubyTry Me!
# Print out the prime numbers between 1 and 100. 
# As a first pass, don't worry about writing an efficient algorithm. 
# Just write clear code that is easy to follow. 
# Once you've done that, consider different possible optimizations.

def print_prime(numbers)
	primes = []
	numbers.each do |number|
		primes << number if prime?(number)
	end
	primes
end

def prime?(number)
	(2...number).each do |divisor|
		if number % divisor == 0
			return false
		end
	end
	true
end

p print_prime((1..100).to_a)