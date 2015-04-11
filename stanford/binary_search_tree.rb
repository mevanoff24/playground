
class TreeNode
	attr_accessor :value, :left, :right
	
	def initialize(value, left, right)
		@value = value
		@left = left
		@right = right
	end

end

class BinarySearchTree
	def initialize(value)
		puts "Initializing with: " + value.to_s
		@root = TreeNode.new(value, nil, nil)
	end

	def in_order_transversal(node = @root)
		return if (node == nil)
		in_order_transversal(node.left)
		puts node.value.to_s
		in_order_transversal(node.right)
	end

	def insert(value)
		puts "inserting: " + value.to_s
		current_node = @root
		while nil != current_node
			if value < current_node.value && current_node.left == nil
				current_node.left = TreeNode.new(value, nil, nil)
			elsif value > current_node.value && current_node.right == nil
				current_node.right = TreeNode.new(value, nil, nil)
			elsif value < current_node.value
				current_node = current_node.left
			elsif value > current_node.value
				current_node = current_node.right
			else
				return
			end
		end			
	end
end


bst = BinarySearchTree.new(10)
bst.insert(11)
bst.insert(9)
bst.insert(5)
bst.insert(7)
bst.insert(18)
bst.insert(17)
# Demonstrating Different Kinds of Traversals
puts "In-Order Traversal:"
bst.in_order_transversal


