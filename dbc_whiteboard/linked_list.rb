
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
			if next_index == index
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
    	nil
    end
  end

  def find(value)
  	current_node = @head
  	while current_node != nil
  		return current_node if current_node.value == value
  		current_node = current_node.pointer
  	end
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

	def print_reverse
		previous_node = nil
		current_node = @head
		until current_node == nil
			next_node = current_node.pointer
			current_node.pointer = previous_node
			previous_node = current_node
			current_node = next_node
		end
		@head = previous_node
	end

	def terminates?
		slow_node = @head
		fast_node = @head.pointer.pointer
		if fast_node.nil? || slow_node.nil?
			puts "LinkedList is acyclic."
			return true
		elsif fast_node == slow_node || fast_node.pointer == slow_node
			puts "LinkedList is cyclic"
			return false
		else
			slow_node = slow_node.pointer
			fast_node = fast_node.pointer.pointer
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
p our_list.find(2).value
our_list.print_list
puts
our_list.add_at_index(sixth_node, 2)
our_list.print_list
our_list.remove(5)
puts
our_list.print_list
p our_list.print_reverse
our_list.terminates?