PS 
initialize with path to and distance to 
set all distance to as INFINITY except source node 


class Dijkstra

	def initialize(graph, source_node)
		@graph = graph
		@source_node = source_node
		@path_to = {}
		@distance_to = {}
		@queue = {}

		compute_shortest_path
	end

	def compute_shortest_path
		@graph.nodes.each do |node|
			@distance_to[node] = Float::INFINITY
		end
		@distance_to[@source_node] = 0
		@queue[@source_node] = 0
		@queue.sort_by {|k,v| v}
		while @queue.any?
			@queue.shift.first
			node.adjacents.each do |adj_node|
				confirm(adj_node)
			end
		end
	end

	def confirm(node)
		return if 
	end

end

class PriorityQueue
  def initialize
    @queue = {}
  end

  def any?
    @queue.any?
  end

  def insert(key, value)
    @queue[key] = value
    order_queue
  end

  def remove_min
    @queue.shift.first
  end

  private
  def order_queue
    @queue.sort_by {|_key, value| value }
  end
end