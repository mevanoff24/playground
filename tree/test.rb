put unvisted nodes on a queue

put source node into FIFO queue and mark as explored
repeat until queue is empty
remove least recently added node
add each unvisted adjacents to queue and mark as visited

class BreathFirstSearch
	def initialize(graph, source_node)
		@graph = graph
		@node = source_node
		@explored = []
		@edges_to = {}

		bfs(source_node)
	end

	def shortest_path(node)
		return unless @explored.include?(node)
		path = []
		while node != @node
			path.unshift(node)
			node = @edges_to[node]
		end
		path.unshift(@node)
	end

	def bfs(node)
		queue = []
		queue << node
		@explored << node

		while queue.any? 
			current_node = queue.shift
			current_node.adjacents.each do |adj_node|
				queue << adj_node
				@explored << adj_node
				@edges_to[adj_node] = current_node
			end
		end
	end
end