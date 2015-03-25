

def longest_incr_sub(seq)
	length_hash = {}
	seq.length.times do |number|
		l_conn_keys = length_hash.keys.select do |index|
			index < number && seq[index] < seq[number]
		end
		l_conn_values = l_conn_keys.map do |k|
      length_hash[k]
    end
    length_hash[number] = 1 + (l_conn_values.max || 0)
	end
	return length_hash.values.max
end

p longest_incr_sub([1,3,5,1,3]) == 3
# p longest_incr_sub([3,5,1,4,6,7,8,9,2]) == 6