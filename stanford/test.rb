
class TreeNode
	attr_accessor :value, :left, :right
	def initialize(value, left, right)
		@value = value
		@right = right
		@left = right
	end
end

class BinaryTree
	def initialize(value)
		@root = TreeNode.new(value, nil, nil)
	end

	def inordertransversal(node = @root)
		return if node == nil
		inordertransversal(node.left)
		puts node.value.to_s
		inordertransversal(node.right)
	end

	def insert(node)
		current_node = @root
		while current_node != nil
			if node < current_node.value && current_node.left == nil
				current_node = TreeNode.new(node, nil, nil)
			elsif node > current_node.value && current_node.right == nil
				current_node = TreeNode.new(node, nil, nil)
			elsif node < current_node.value
				current_node = current_node.left
			elsif node > current_node.value
				current_node = current_node.right
			else
				return
			end	
		end
	end
end

bst = BinaryTree.new(10)
bst.insert(11)
bst.insert(9)
bst.insert(5)
bst.insert(7)
bst.insert(18)
bst.insert(17)

puts "In-Order Traversal:"
p bst.inordertransversal



