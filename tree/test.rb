
class BreathFirstSearch
	def intiatialize(graph, source_node)
		@graph = graph
		@node = source_node
		@explored = []
		@edges_to = {}

		bfs(source_node)
	end

	def shortest_path(node)
		return unless has_path_to(node)
		path = []
		while node != @node do 
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
				next if current_node.include?(adj_node)
				queue << adj_node
				@explored << adj_node
				@edges_to[adj_node] = current_node
			end
		end
	end

	def has_path_to(node)
		@visited.include?(node)
	end

end