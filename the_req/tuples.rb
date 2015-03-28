# Convert an Array of tuples to a Hash in RubyTry Me!
# Suppose I have the following Array of tuples

# [ ['a',1], ['b',2], ['c','3' ]
# How can I convert this to a Hash?

# { 'a' => 1, 'b' => 2, 'c' => 3}
# Once I've written the algorithm, how would I make it generally available throughout my Ruby application?



module Tuples
	def convert_to_tuples(tuple_array)
		tupple_hash = Hash[ tuple_array ]
	end
end


class CoolBeans
	include Tuples
end

cool = CoolBeans.new

p cool.convert_to_tuples([ ['a',1], ['b',2], ['c',3] ])

