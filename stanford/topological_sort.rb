
class TopologicalSort
	def initialze(graph)
		@explored = []
		@post_order = []

		graph.nodes.each do |node|
			dfs(node) unless @explored.include?(node)
		end
	end

	def dfs(node)
		@explored << node
		node.adjacents.each do |adj_node|
			dfs(adj_node) unless @explored.include?(adj_node)
		end
		@post_order << adj_node
	end
end