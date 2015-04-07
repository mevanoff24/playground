
require 'parallel'

# Deep Copy
# Ruby dup/clone does only shallow copies
def deep_copy(o)
	Marshal.load(Marshal.dump(o))
end

# Pick 2 random neighboring vertices from the graph
def randomVertices(g)
	# Select a vertex (1) from the graph
	# Select a random neighbor from vertex (1) to contract with
	v1 = g.keys.sample
	v2 = g[v1].sample

	[v1, v2]
end

def karger(g)     
	while(g.size > 2)
		# Get random vertices v1 and v2
		v1, v2 = randomVertices(g)

		# Combine neighbors of v2 into v1, v1 is now u'
		g[v1].concat(g[v2])

		# Repoint all the neighbors edges of v2 to v1 (u')
		g[v2].each { |neighbor| g[neighbor].map! { |i| i == v2 ? v1 : i } }

		# Remove self loops
		g[v1] = g[v1].reject { |e| e == v1 }

		# Delete v2 from the graph
		g.delete(v2)
	end

	# Grab the first hash pair and return the size of the array
	# The array are neighbors (edges)
	g.shift[1].size
end