require 'priority_queue'

class Dijkstra
	def initialize
		@vertices = {}
		@distances = {}
		@previous = {}
		@nodes = PriorityQueue.new
	end

	def add_vertex(name, edges)
		@vertices[name] = edges
	end

	def shortest_path(start, finish)
		maxint = Float::INFINITY
		@vertices.each do |vertex, value|
			if start == vertex
				@distances[vertex] = 0
				@nodes[vertex] = 0
			else
				@distances[vertex] = maxint
				@nodes[vertex] = maxint
			end
			@previous[vertex] = nil
		end
		while @nodes.any?
			smallest_value = @nodes.delete_min_return_key
			if smallest_value == finish
				path = []
				while @previous[smallest_value]
					path << smallest_value
					smallest_value = @previous[smallest_value]
				end
				return path
			end
			if smallest_value == nil || @distances[smallest_value] = maxint
				break
			end
			@vertices[smallest_value].each do |neighbor, value|
				alt = @distances[smallest_value] + @vertices[smallest_value][neighbor]
				if alt < @distances[neighbor]
					@distances[neighbor] = alt
					@previous[neighbor] = smallest_value
					@nodes[neighbor] = alt
				end
			end
		end
	end

	def distance
		@distances
	end
end





dijkstra = Dijkstra.new

dijkstra.add_vertex('A', {'B' => 7, 'C' => 8})
dijkstra.add_vertex('B', {'A' => 7, 'F' => 2})
dijkstra.add_vertex('C', {'A' => 8, 'F' => 6, 'G' => 4})
dijkstra.add_vertex('D', {'F' => 8})
dijkstra.add_vertex('E', {'H' => 1})
dijkstra.add_vertex('F', {'B' => 2, 'C' => 6, 'D' => 8, 'G' => 9, 'H' => 3})
dijkstra.add_vertex('G', {'C' => 4, 'F' => 9})
dijkstra.add_vertex('H', {'E' => 1, 'F' => 3})

p dijkstra.shortest_path("A", "E")
p dijkstra.distance