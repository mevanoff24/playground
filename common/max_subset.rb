
def get_max_sum(array)
	best_so_far = 0
	best_now = 0
	best_start_index_so_far = -1
	best_stop_index_so_far = -1
	best_start_index_now = -1

	for number in array
		value = best_now + array[number]
		if value > 0
			if best_now == 0
				best_start_index_now = number
			end
			best_now = value
		else
			best_now = 0
		end
		if best_now > best_so_far
			best_so_far = best_now
			best_stop_index_so_far = number
			best_start_index_so_far = best_start_index_now
		end
	end
	p best_so_far
	p best_start_index_so_far
	p best_stop_index_so_far
end

get_max_sum([1,,4,2,44,2,4,67,2,4,6,3,2])
