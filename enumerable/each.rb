

def my_each
	i = 0
	while self[i]
		yield self[i]
		i += 1
	end
	self
end

my_each()