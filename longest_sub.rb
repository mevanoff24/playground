

def longest_incr_sub(seq)
	l = {}
	seq.length.times do |j|
		l_conn_keys = l.keys.select do |i|
			i < j and seq[i] < seq[j]
		end
		l_conn_values = l_conn_keys.map do |k|
      l[k]
    end
    l[j] = 1 + (l_conn_values.max || 0)
	end
	return l.values.max
end

p longest_incr_sub([1,3,5,1,3])