
class Node
	attr_accessor :value, :pointer
	def initialize(value=nil, pointer=nil)
		@value = value
		@pointer = nil
	end
end

class LinkedList
	attr_accessor :head, :size
	def initialize(head_node=nil)
		@head = head_node
		@size = 0
	end

	def add_node(new_node)
		if @head == nil
			@head = new_node
		else
			current_node = @head
			until current_node.pointer == nil
				current_node = current_node.pointer
			end
			current_node.pointer = new_node
		end
	end

	def add_at_index(new_node, index)
		current_node = @head
		next_index = 1
		while next_index <= index
			if index == next_index
				new_node.pointer = current_node.pointer
				current_node.pointer = new_node
			end
			current_node = current_node.pointer
			next_index += 1
		end
	end

	def remove_at_index(node, index)

	end

	def print_list
		current_node = @head
		index = 0
		while current_node
			puts "#{index} -> #{current_node.value}"
			current_node = current_node.pointer
			index += 1
		end
	end
end

first_node = Node.new(1)
p first_node.value == 1
p first_node.pointer == nil

our_list = LinkedList.new(first_node)
p our_list.head.value == 1

second_node = Node.new(2)
third_node = Node.new(3)
fourth_node = Node.new(4)
fifth_node = Node.new(5)
sixth_node = Node.new(6)
our_list.add_node(second_node)
our_list.add_node(third_node)
our_list.add_node(fourth_node)
our_list.add_node(fifth_node)
our_list.print_list
puts
our_list.add_at_index(sixth_node, 2)
our_list.print_list
