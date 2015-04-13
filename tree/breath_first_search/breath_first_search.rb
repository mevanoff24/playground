 require 'set'

 # Put unvisited nodes on a queue
# Solves the shortest path problem: Find path from "source" to "target" that uses the fewest number of edges
# Not recursive (like depth first search)

# Steps
# * Put s into a FIFO queue and mark it as visited
# * Repeat until the queue is empty:
#   - Remove the least recently added node, n
#   - add each of n's unvisited adjacents to the queue and mark them as visited

# In the breath first search we always use a queue. 
class Graph
	def add_edge(node_a, node_b)
		node_a.adjacents << node_b
		node_b.adjacents << node_a
	end
end

class Node
	attr_accessor :name, :adjacents
	def initialize(name)
		@adjacents = Set.new
		@name = name
	end

	def to_s
		@name
	end
end

class BreathFirstSearch

	def initialize(graph, sourch_node)
		@graph = graph
		@node = sourch_node
		@visited = []
		@edge_to = {}

		bfs(sourch_node)
	end

	def shortest_path(node)
		return unless has_path_to(node)

		path = []

		while (node != @node) do 
			path.unshift(node)
			node = @edge_to[node]
		end
		path.unshift(@node)
	end

	def bfs(node)
		queue = []
		queue << node
		@visited << node

		while queue.any?
			current_node = queue.shift
			current_node.adjacents.each do |adj_node|
				next if @visited.include?(adj_node)
				queue << adj_node
				@visited << adj_node
				@edge_to[adj_node] = current_node
			end
		end
	end
		# put source node into queue and mark as visited
		

		# remove recently visited node
		# add each unvisited adjacents to queue and mark as visited
		

	def has_path_to(node)
		@visited.include?(node)
	end
	
end

@node1 = Node.new("Node #1")
@node2 = Node.new("Node #2")
@node3 = Node.new("Node #3")
@node4 = Node.new("Node #4")
@node5 = Node.new("Node #5")

graph = Graph.new
graph.add_edge(@node1, @node2)
graph.add_edge(@node2, @node3)
graph.add_edge(@node2, @node4)
graph.add_edge(@node4, @node5)
graph.add_edge(@node1, @node5)

search = BreathFirstSearch.new(graph, @node1)
p search.shortest_path(@node5)





