

class Array
	def my_each_with_index
		index = 0
		while self[index]
			yield self[index], index
			index += 1
		end
		self
	end
end

p [1,2,3].my_each_with_index{|n| n * n }