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

	describe "#initial_distances" do
		specify do
			expect(maze.initial_distances(:a)).to eq [0, nil, nil, nil] 
		end
		specify do
			expect(maze.initial_distances(:d)).to eq [nil, nil, nil, 0] 
		end
	end

	describe "#closest" do
		specify do 
			expect(maze.closest([:a], [0])).to eq (:a)
		end
		specify do 
			expect(maze.closest([:a, :b], [1, 0])).to eq (:b)
		end
		specify do 
			expect(maze.closest([:a, :b, :c], [1, 0, nil])).to eq (:b)
		end
	end

	describe "#mark" do
		specify do 
			distances = [0, nil, nil, nil]
			maze.mark(:a, distances)
			expect(distances).to eq [0, 1, nil, nil]
		end
		specify do 
			distances = [1, nil, nil, nil]
			maze.mark(:a, distances)
			expect(distances).to eq [1, 2, nil, nil]
		end
		specify do 
			distances = [nil, nil, nil, 0]
			maze.mark(:d, distances)
			expect(distances).to eq [nil, 1, 1, 0]
		end
	end

	describe "#solve" do 
		xit "labels the distance to a goal" do
			expect(maze.solve(:d)).to eq [2,1,1,0]
		end
		xit "labels the distance to a goal" do
			expect(maze.solve(:a)).to eq [0,1,2,2]
		end
	end
end 