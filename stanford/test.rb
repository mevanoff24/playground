

Point = Struct.new(:x, :y)

def closest_pair(points)
	min_distance = Float::INFINITY
	min_points = []
	points.combination(2).each do |pi, pj|
		dist = distance(pi, pj)
		if dist < min_distance
			min_distance = dist
			min_points = [pi, pj]
		end
	end
	[min_distance, min_points]
end

def distance(point1, point2)
	Math.hypot(point1.x - point2.x, point1.y - point2.y)
end	

points = Array.new(100) {Point.new(rand(1..50), rand(1..50))}

p closest_pair(points)