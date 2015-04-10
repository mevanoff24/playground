
class Maze
	attr_accessor :nodes, :connections
	
	def initialize(nodes, connections)
		@nodes = nodes
		@connections = connections
	end

	def initial_distances(goal)
		distance = [nil]* nodes.length
		distance[nodes.index(goal)] = 0
		distance
	end

	def closest(nodes,distances)
		nodes.min_by{ |node| distances[nodes.index(node)] || 10000}
	end

	def mark(node, distances)
		connections[node].each do |neighbor|
			next if distances[nodes.index(neighbor)]
			distances[nodes.index(neighbor)] = distances[nodes.index(node)] + 1
		end

	end

	def solve(goal)
		unchecked_nodes = nodes
		distances = initial_distances(goal)
		until unchecked_nodes.empty?
			closest_node = closest(unchecked_nodes, distances)
			mark(closest_node, distances)
			unchecked_nodes -= [closest_node]
		end
		distances
	end

end

