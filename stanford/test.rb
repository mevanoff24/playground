
Point = Struct.new(:x, :y)

def distance(p1, p2)
	Math.hypot(p1.x - p2.x, p2.x - p2.y )
end

def closest_pair(points)
	min_distance = Float::INFINITY
	min_points = []
	points.combination(2) do |pi, pj|
		dist = distance(pi, pj)
		if dist < min_distance
			min_distance = dist
			min_points << [pi, pj]
		end
	end
	[min_points, min_points]
end

points = Array.new(100) {Point.new(rand, rand)}
p closest_pair(points)