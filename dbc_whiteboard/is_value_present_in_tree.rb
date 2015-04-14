
class Node 
	attr_accessor :value, :right, :left
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

def is_value_present_in_tree(root, value)
	return false if root == nil
	if root.value == value
		true
	elsif root.value < value
		return is_value_present_in_tree(root.right, value)
	else
		return is_value_present_in_tree(root.left, value)
	end
end

p is_value_present_in_tree(root, 8) == true
p is_value_present_in_tree(root, 7) == true
p is_value_present_in_tree(root, 12) == false