
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
			current_node.pointer = new_node
		end
	end

	def print
		current_node = @head
		index = 0
		while current_node
			puts "index #{index} -> value #{current_node.value}"
			current_node = current_node.pointer
			index += 1
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

	def print_reverse
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

	def terminates?
		fast_node = @head.pointer.pointer
		slow_node = @head
		while true
			if fast_node.nil? || fast_node.pointer.nil?
				puts "it ends"
				return true
			elsif fast_node == slow_node || fast_node.pointer == slow_node
				puts "never ends"
				return false
			else
				slow_node = slow_node.pointer
				fast_node = fast_node.pointer
			end
			nil
		end
	end
end

first_node = Node.new(1)
second_node = Node.new(2)
third_node = Node.new(3)
fourth_noode = Node.new(4)
fifith_node = Node.new(5)
sixth_node = Node.new(6)

our_list = LinkedList.new(first_node)
our_list.add(second_node)
our_list.add(third_node)
our_list.add(fourth_noode)
our_list.add(fifith_node)
our_list.print
our_list.add_at_index(sixth_node, 3)
puts
our_list.print
our_list.remove(6)
puts
our_list.print
p our_list.terminates?
p our_list.print_reverse




