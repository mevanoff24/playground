

def binary_low(target, array, low=0, high=array.length-1)
	if low == high
		high
	else
		mid = (high + low) / 2
		if target > array[mid]
			binary_low(target, array, mid+1, high)
		else
			binary_low(target, array, low, mid)
		end
	end
end

def binary_high(target, array, low=0, high=array.length-1)
	if low == high
		high
	else
		mid = (high + low) / 2
		if target < array[mid]
			binary_high(target, array, low, mid)
		else
			binary_high(target, array, mid+1, high)
		end
	end
end

low = binary_low(1, [0, 0, 1, 1, 1, 1, 1, 2, 2, 3, 3])
high = binary_high(1, [0, 0, 1, 1, 1, 1, 1, 2, 2, 3, 3])

p high - low

