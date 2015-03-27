require 'rspec'
require_relative 'two_dijkstras'

describe Maze do
	let(:nodes) {[:a, :b, :c, :d]}
	let(:connections) {
		{ :a => [:b],
			:b => [:a, :c, :d],
			:c => [:b, :d],
			:d => [:b, :c] }
	}
	let(:maze) { Maze.new(nodes, connections) }

	describe "#solve" do 
		it "labels the distance to a goal" do
			expect(maze.solve(:d)).to eq [2,1,1,0]
		end
		it "labels the distance to a goal" do
			expect(maze.solve(:a)).to eq [0,1,2,2]
		end
	end
end 