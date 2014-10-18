require "Game"
require "spec_helper"

describe Game do 
	it "to create a new game"do
	g = Game.new
	end

	describe "#roll" do
		it "roll the ball" do
			g = Game.new
			#g.roll(1)
			20.times do
    			g.roll(0)
   			end
			expect(g.score).to eq(0)
			g1 = Game.new
			#g.roll(1)
			20.times do
    			g1.roll(1)
   			end
			expect(g1.score).to eq(20)
		end
	end
	describe "#score" do
		it "final score"do
	end
	end
end