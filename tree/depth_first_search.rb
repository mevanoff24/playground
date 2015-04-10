

class DepthFirstSearch
	def initialize(graph, sources_node)
		@graph = graph
		@sources_node = sources_node
		@visited = []
		@edge_to = {}

		dfs(sources_node)
	end

	def	path_to_node(node)
		return unless has_path_to(node)
		path = []
		current_node = node

		while (current_node != @sources_node) do
			path.unshift(current_node)
			current_node = @edge_to[current_node]
		end

		path.unshift(@sources_node)
	end

	def dfs(node)
		@visited << node
		node.adjacents.each do |adj_node|
			next if @visited.include?(adj_node)

			dfs(adj_node)
			@edge_to[adj_node] = node
		end
	end

	def has_path_to?(node)
    @visited.include?(node)
  end

end