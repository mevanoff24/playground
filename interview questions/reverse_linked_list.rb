require "pp"

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
			@head = current_node
		else
			current_node = @head
			until current_node.pointer == nil
				current_node = current_node.pointer
			end
			current_node.pointer = new_node
		end
	end

	def remove
		return "Nothing to remove" if @head == nil
		last_node = @head
		until last_node.pointer == nil
			second_to_last_node = last_node
			last_node = last_node.pointer			
		end
		second_to_last_node.pointer = nil
		pp second_to_last_node
    pp last_node
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
our_list.remove

