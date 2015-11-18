class RouletteController < ApplicationController

	def index
		
	end

	def getCTStat
		@roulette = Roulette.where("team = 'CT'")
		@roulette = @roulette.sample
	end

	def getTStat
		@roulette = Roulette.where("team = 'T'")
		@roulette = @roulette.sample
	end
end
