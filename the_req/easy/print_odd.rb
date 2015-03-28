# Print odd numbers in RubyTry Me!
# Write function to print the odd numbers from 1 to 99

def print_odd(numbers)
	numbers.each do |number|
		if number % 2 == 1
			p number
		end
	end
end

print_odd((1..99).to_a)