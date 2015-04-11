
class Node
	attr_accessor :value, :left_child, :right_child
	def initialize(value)
		@value = value
		@left_child = nil
		@right_child = nil
	end

	def make_BST(size)
		numbers = (0..size).to_a.shuffle
		root = Node.new(numbers.shift)
		while numbers.any?
			add_node(root, Node.new(numbers.shift))
		end
		return root
	end

	def add_node(root, node)
		if node.value < root.value
			if root.left_child == nil
				root.left_child = node
				return
			else
				add_node(root.left_child, node)
			end
		else
			if root.right_child == nil
				root.right_child = node
				return
			else
				add_node(root.right_child, node)
			end
		end
		return root
	end
end

p node = Node.new(0)
p node.make_BST(20)