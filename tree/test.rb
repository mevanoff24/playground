
class DepthFirstSearch
	def initialize(graph, source_node)
		@graph = graph
		@node = source_node
		@explored = []
		@edges_to = {}
		dfs(node)
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