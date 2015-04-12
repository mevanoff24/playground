
class Queue
	def initialize
		@elements = []
	end

	def first
		@elements[0]
	end

	def last
		@elements[-1]
	end

	def enqueue(value)
		@elements << value
	end

	def dequeue
		@elements.shift
	end

	def is_empty?
		@elements == nil
	end
end

q = Queue.new
puts q.is_empty? == true
q.enqueue(1)
q.enqueue(2)
puts q.first == 1
puts q.last == 2
puts q.dequeue == 1
q.enqueue(3)
puts q.dequeue == 2
puts q.is_empty? == false
puts q.dequeue == 3
puts q.is_empty? == true