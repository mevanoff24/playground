require 'priority_queue'

class Graph

	def initialize()
		@vertices = {}
	end

	def add_vertex(name, edges)
		@vertices[name] = edges
	end

	def shortest_path(start, finsh)
		maxint = Float::INFINITY
		distance = {}
		previous = {}
		nodes = PriorityQueue.new

		@vertices.each do |vertex, value|
			if vertex = start 
				distance[vertex] = 0
				previous[vertex] = 0
			else
				distance[vertex] = maxint
				nodes[vertex] = maxint
			end
			previous[vertex] = nil
		end

		while nodes
			# smallest = nodes.delete_min_return_key

			if smallest == finsh
				path = []
				while previous[smallest]
					path << smallest
					smallest = previous[smallest]
				end
				return path
			end

			if smallest == nil || distance[vertex] = maxint
				break
			end

			@vertices[smallest].each do |neighbor, value|
				alt = distance[smallest] + @vertices[smallest][neighbor]
				if alt < distance[neighbor]
					distance[neighbor] = alt
					previous[neighbor] = smallest
					nodes[neighbor] = alt
				end
			end
		end
		return distance.inspect
	end

	def to_s
		@vertices.inspect
	end

end






graph = Graph.new

graph.add_vertex('A', {'B' => 7, 'C' => 8})
graph.add_vertex('B', {'A' => 7, 'F' => 2})
graph.add_vertex('C', {'A' => 8, 'F' => 6, 'G' => 4})
graph.add_vertex('D', {'F' => 8})
graph.add_vertex('E', {'H' => 1})
graph.add_vertex('F', {'B' => 2, 'C' => 6, 'D' => 8, 'G' => 9, 'H' => 3})
graph.add_vertex('G', {'C' => 4, 'F' => 9})
graph.add_vertex('H', {'E' => 1, 'F' => 3})

puts graph.shortest_path("A", "F")
{"A"=>0, "B"=>7, "C"=>8, "D"=>17, "E"=>13, "F"=>9, "G"=>12, "H"=>12}

