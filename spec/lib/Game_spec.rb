require "Game"
require "spec_helper"

describe Game do 
	it "to create a new game"do
	g = Game.new
	end

	describe "prove score and roll method" do
		it "frame 10 strike" do
			g = Game.new
			  #frame1
		      g.roll(5)
		      g.roll(5) #spare
		      #frame2
		      g.roll(3)
		      g.roll(4)
		      #frame3
		      g.roll(10) #strike
		      #frame4
		      g.roll(5)
		      g.roll(3)
		      #frame5
		      g.roll(7)
		      g.roll(3) #spare
		      #frame6
		      g.roll(10) #strike
		      #frame7
		      g.roll(8)
		      g.roll(2) #spare
		      #frame8
		      g.roll(2)
		      g.roll(2)
		      #frame9
		      g.roll(4)
		      g.roll(6) #spare
		      #frame10
		      g.roll(10)#strike
		      g.roll(2)
		      g.roll(5) #row3
		      expect(g.score).to eq(139)
					
		end

		it "no spare or strike at frame 10" do
			g = Game.new
			  #frame1
		      g.roll(5)
		      g.roll(1) 
		      #frame2
		      g.roll(3)
		      g.roll(4)
		      #frame3
		      g.roll(10) #strike
		      #frame4
		      g.roll(5)
		      g.roll(3)
		      #frame5
		      g.roll(7)
		      g.roll(3) #spare
		      #frame6
		      g.roll(10) #strike
		      #frame7
		      g.roll(8)
		      g.roll(2) #spare
		      #frame8
		      g.roll(2)
		      g.roll(2)
		      #frame9
		      g.roll(4)
		      g.roll(6) #spare
		      #frame10
		      g.roll(2)
		      g.roll(2)
		       #no row3
		      expect(g.score).to eq(111)
					
		end

		it 'can roll a spare at last frame' do
			g2 = Game.new
		    #frame1
		    g2.roll(5)
		    g2.roll(5) #spare
		    #frame2
		    g2.roll(3)
		    g2.roll(4)
		    #frame3
		    g2.roll(10) #strike
		    #frame4
		    g2.roll(5)
		    g2.roll(3)
		    #frame5
		    g2.roll(7)
		    g2.roll(3) #spare
		    #frame6
		    g2.roll(10) #strike
		    #frame7
		    g2.roll(8)
		    g2.roll(2) #spare
		    #frame8
		    g2.roll(2)
		    g2.roll(2)
		    #frame9
		    g2.roll(4)
		    g2.roll(6) #spare
		    #frame10
		    g2.roll(8)
		    g2.roll(2) #spare
		    g2.roll(5) #row3
		    expect(g2.score).to eq(135)
	    end

		it 'can roll a strike at last frame' do
			g3 = Game.new
		    #frame1
		    g3.roll(4)
		    g3.roll(1)
		    #frame2
		    g3.roll(3)
		    g3.roll(2)
		    #frame3
		    g3.roll(4)
		    g3.roll(6) #spare
		    #frame4
		    g3.roll(10) #strike
		    #frame5
		    g3.roll(5)
		    g3.roll(5) #spare
		    #frame6
		    g3.roll(2)
		    g3.roll(8) #strike
		    #frame7
		    g3.roll(2)
		    g3.roll(1)
		    #frame8
		    g3.roll(2)
		    g3.roll(8) #strike
		    #frame9
		    g3.roll(10)	#strike
		    #frame10
		    g3.roll(10) #strike
		    g3.roll(6) 
		    g3.roll(2) #row3
		    expect(g3.score).to eq(141)
	    end

	    it "perfect game(all strike)" do
			g = Game.new
			  #frame1
		      g.roll(10) #strike
		      #frame2
		      g.roll(10) #strike
		      #frame3
		      g.roll(10) #strike
		      #frame4
		      g.roll(10) #strike
		      #frame5
		      g.roll(10) #strike
		      #frame6
		      g.roll(10) #strike
		      #frame7
		      g.roll(10) #strike
		      #frame8
		      g.roll(10) #strike
		      #frame9
		      g.roll(10) #strike
		      #frame10
		      g.roll(10) #strike
		      g.roll(10) #strike
		      g.roll(10) #strike
		      expect(g.score).to eq(300)
					
		end

	end
	
end