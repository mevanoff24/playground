
class DepthFirstSearch
	def initialize(graph, source_node)
		@graph = graph
		@source_node = source_node
		@explored = []
		@edges_to = {}
		dfs(node)
	end

	def shortest_path(node)
		return unless @explored.include(node)
		path = []
		current_node = node 
		while current_node != @source_node
			path.unshift(current_node)
			current_node = @edges_to[current_node]
		end
		path.unshift(@source_node)
	end

	def dfs(node)
		@explored << node
		node.adjacents.each do |adj_node|
			next if @explored.include?(adj_node)
			dfs(adj_node)
			@edges_to[adj_node] = node
		end
	end
end