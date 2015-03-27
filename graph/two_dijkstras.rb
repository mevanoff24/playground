
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

	def mark(node, distance)
		
	end

	def solve(goal)
		unchecked_nodes = nodes
		distance = initial_distances(goal)
		until unchecked_nodes.empty?
			closest_node = closest(unchecked_nodes, distance)
		mark(closest_node, distance)
		unchecked_nodes -= [closest_node]
		end
	end

end