
class Array 
	def my_select
		array = []
		index = 0
		while self[index]
			array << true if (yield self[index])
			index += 1
		end
		array
	end
end

p [1,2,3].my_select{|n| n > 2 }