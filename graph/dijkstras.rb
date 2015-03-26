

class Graph
	def initialize()
		@verticies = {}
	end

	def add_vertex(name, edges)
		@verticies[name] = edges
		p @verticies
	end

	def to_s
		return @verticies.inspect
	end
end

graph = Graph.new

graph.add_vertex('A', {'B' => 7, 'C' => 8})

