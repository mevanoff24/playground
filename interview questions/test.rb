
class Node 
	attr_accessor :value, :pointer
	def initialize(value)
		@value = value
		@pointer = nil
	end
end

class LinkedList
	attr_accessor :head, :size
	def initialize(head_node=nil)
		@head = head_node
		@size = size
	end

	def add(new_node)
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

	def remove_at_index(index)
		if index = 0
			@head = @head.pointer 
			# @size -=1
		else
			counter = 0
			previous_node = @head
			while counter < index -1
				previous_node = previous_node.pointer
				counter +=1
			end
			node_to_remove = previous_node.pointer
			previous_node.pointer = node_to_remove.pointer
		end
		# @size -=1
	end

	def print
		current_node = @head
		index = 0
		while current_node
			puts "#{index} -> #{current_node.value}"
			current_node = current_node.pointer
			index +=1
		end
	end

	def reverse_print
		current_node = @head
		previous_node = nil
		until current_node == nil
			next_node = current_node.pointer
			current_node.pointer = previous_node
			previous_node = current_node
			current_node = next_node
		end
		@head = previous_node
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
our_list.add(second_node)
our_list.add(third_node)
our_list.add(fourth_node)
our_list.add(fifth_node)
our_list.print
our_list.remove_at_index(4)
p our_list.reverse_print