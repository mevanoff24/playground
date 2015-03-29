

def fibonacci(number)
	if number == 0 || number == 1
		number
	else
		number * fibonacci(number-1)
	end
end

p fibonacci(6)