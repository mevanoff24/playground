
class Sort

	def initialize(graph)
		@post_order = []
		@explored = []

		graph.nodes.each do |node|
			dfs(node) unless @explored.include?(node)
		end
	end

	def dfs(node)
		@explored << node
		node.adjacents.each do |adj_node|
			dfs(adj_node) unless @explored.include?(adj_node)
		end
		@post_order << node
	end
	
end