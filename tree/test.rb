
class Node
	attr_accessor :value, :left_child, :right_child
	def initialize(value)
		@value = value
		@left_child = nil
		@right_child = nil
	end
end

def make_tree(size)
	numbers = (0..size).to_a.shuffle
	root = Node.new(numbers.shift)
	while numbers.any?
		add_node(root, Node.new(numbers.shift))
	end
	return root
end

def add_node(root, node)
	if node.value < node.root
		if node.left_child == nil
			node.left_child = node
		else
			add_node(root.left_child, node)
		end
	else
		if node.right_child == nil
			node.right_child = node
		else
			add_node(root.right_child, node)
		end
	end
	return root
end