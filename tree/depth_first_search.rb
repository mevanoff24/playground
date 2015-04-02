

class DepthFirstSearch
	def initialize(graph, sources_nodes)
		@graph = graph
		@sources_nodes = sources_nodes
		@visited = []
		@edge_to = {}

		dfs(sources_nodes)
	end

	def	path_to_node(node)
		return unless @visited.include?(node)
		path = []
		current_node = node

		while (current_node != sources_nodes) do
			path.unshift(current_node)
			current_node = @edge_to[current_node]
		end

		path.unshift(@sources_nodes)
	end

	def dfs(node)
		@visited = node
		node.adjacents.each do |adj_node|
			next if @visited.include?(adj_node)

			dfs(adj_node)
			@edge_to[adj_node] = node
		end
	end

end