
class Node
	attr_accessor :value, :pointer
	def initialize(value=nil, pointer=nil)
		@value = value
		@pointer = nil
	end
end

class LinkedList
	attr_accessor :head
	def initialize(head_node=nil)
		@head = head_node
	end

	def add(new_node)
		if @head == nil
			@head = new_node
		else
			current_node = @head
			until current_node.pointer == nil
				current_node = current_node.pointer
			end
		end
		current_node.pointer = new_node
	end

	def add_at_index(new_node, index)
		current_node = @head
		next_index = 1
		while next_index <= index
			if next_index == index
				new_node.pointer = current_node.pointer
				current_node.pointer = new_node
			end
			current_node = current_node.pointer
			next_index +=1
		end
	end

	def remove(value)
		if @head.value == value
			@head = @head.pointer
		else
			current_node = @head.pointer
			previous_node = @head
			while current_node
				if current_node.value == value
					previous_node.pointer = current_node.pointer
					return true
				end
				previous_node = current_node
				current_node = current_node.pointer
			end
		end
	end

	def find(value)
		current_node = @head
		while current_node
			return current_node if current_node.value == value
			current_node = current_node.pointer
		end
	end

	def print
		current_node = @head
		index = 0
		while current_node
			puts "#{index} -> #{current_node.value}"
			current_node = current_node.pointer
			index+=1
		end
	end

	def terminates?
		slow_node = @head
		fast_node = @head.pointer.pointer
		while true
			if fast_node.nil? || fast_node.pointer.nil?
				puts "ends"
				return false
			elsif fast_node == slow_node || fast_node.pointer == slow_node
				puts "never"
				return true
			else
				slow_node = head.pointer
				fast_node = fast_node.pointer.pointer
			end
		end
	end
end

node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)
node4 = Node.new(4)
node5 = Node.new(5)
ll = LinkedList.new(node1)
ll.add(node2)
ll.add(node3)
ll.add(node4)
ll.add_at_index(node5, 2)
ll.print
p ll.find(5)
ll.remove(5)
p ll.print
ll.terminates?



