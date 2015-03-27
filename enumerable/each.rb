
class Array
	def my_each
		i = 0
		while self[i]
			yield self[i]
			i += 1
		end
		self
	end
end


p [1,2,3].my_each{|n| n * n }
