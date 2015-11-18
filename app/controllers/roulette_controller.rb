class RouletteController < ApplicationController

	def index
		
	end

	def getCTStat
		@roulette = Roulette.where("team = 'CT'").limit(1).order("RANDOM()")
	end

	def getTStat
		@roulette = Roulette.where("team = 'T'").limit(1).order("RANDOM()")
	end
end
