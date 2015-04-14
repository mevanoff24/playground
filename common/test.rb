class Node
	attr_accessor :value, :left, :right
	def initialize(value)
		@value = value
		@left = nil
		@right = nil
	end
end

root = Node.new(8)
root.left = Node.new(3)
root.right = Node.new(10)
root.left.left = Node.new(1)
root.left.right = Node.new(6)
root.left.right.left = Node.new(4)
root.left.right.right = Node.new(7)

def is_value_present(root, value)
	return false if root == nil
	if root.value == value
		return true
	elsif root.value < value
		return is_value_present(root.right, value)
	else
		return is_value_present(root.left, value)	
	end
end

p is_value_present(root, 8)
p is_value_present(root, 7)
p is_value_present(root, 4)
p is_value_present(root, 11)