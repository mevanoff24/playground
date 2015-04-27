

def longest_incr_sub(array)
	length_hash = {}
	array.length.times do |number|
		l_conn_keys = length_hash.keys.select do |index|
			index < number && array[index] < array[number]
		end
		l_conn_values = l_conn_keys.map do |key|
      length_hash[key]
    end
    length_hash[number] = 1 + (l_conn_values.max || 0)
	end
	return length_hash.values.max
end

p longest_incr_sub([1,3,5,1,3]) == 3
p longest_incr_sub([1,3,5,1,3]) 
