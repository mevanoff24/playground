

def dubs_binary_low(target, array, low=0, high=array.length-1)
	if low == high
		high
	else
		mid = (high + low) / 2
		if target > array[mid]
			dubs_binary_low(target, array, mid+1, high)
		else
			dubs_binary_low(target, array, low, mid)
		end
	end
end

def dubs_binary_high(target, array, low=0, high=array.length-1)
	if low == high
		high
	else
		mid = (high + low) / 2
		if target < array[mid]
			dubs_binary_high(target, array, low, mid)
		else
			dubs_binary_high(target, array, mid+1, high)
		end
	end
end

low = dubs_binary_low(1, [0, 0, 1, 1, 1, 2, 2, 3, 3])
high = dubs_binary_high(1, [0, 0, 1, 1, 1, 2, 2, 3, 3])

p high - low

