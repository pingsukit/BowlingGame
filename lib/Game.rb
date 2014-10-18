class Game
	def initialize
     
     @rolls = []
    end

	def roll(pins)
		@rolls << pins
	end

	def score()
		score=0
		frame=0
		index=0
		while frame<10
			if frame<9
				if strike(index)
					score+=10+@rolls[index+1]+@rolls[index+2]
					index+=1
				elsif spare(index)
					score+=10+@rolls[index+2]
					index+=2
				else 
					score+=@rolls[index]+@rolls[index+1]
					index+=2
				end

			elsif frame==9 #last frame
				if strike(index)
					score+=10+@rolls[index+1]+@rolls[index+2]
				elsif spare(index)
					score+=10+@rolls[index+2]
				elsif @rolls[index]+@rolls[index+1]<10
					score+=@rolls[index]+@rolls[index+1]
				end
			end
			frame+=1
		end
		 # @rolls.each do |roll|
   #      	 @score += roll
	  #    end
	  score
	end

	def spare(index)
    	@rolls[index] + @rolls[index + 1] == 10
   end

   def strike(index)
    	@rolls[index]== 10
   end
end