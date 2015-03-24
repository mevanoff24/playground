

class Tree

	attr_accessor :left, :right, :data

	def initialize(data_set = nil)
		@left = nil
		@right = nil
		@data = data_set
	end

	def insert(data_set)
		list = []
		if @data == nil
			@data = data_set
		elsif @left == nil
			@left = Tree.new(data_set)
		elsif @right == nil
			@right = Tree.new(data_set)
		else
			list << @left
			list << @right
			loop do
				node = list.shift
				if node.left == nil
					node.insert(data_set)
					break
				else
					list << node.left
				end
				if node.right == nil
					node.insert(data_set)
					break
				else
					list << node.right
				end
			end
		end
	end

	def traverse()
		list = []
		yield @data
		list << @left if @left != nil
		list << @right if @right != nil
		loop do
			break if list.empty?
			node = list.shift
			yield node.data
			list << node.left if node.left != nil
			list << node.right if node.right != nil
		end
	end

end


items = [1, 2, 3, 4, 5, 6, 7]

tree = Tree.new

items.each {|data_set| tree.insert(data_set)}

tree.traverse {|data_set| print "#{data_set} "}