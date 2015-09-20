class TeamController < ApplicationController

    def index
    	@team = Team.order('id desc')
    end

    def show
    	@member = Team.find(params[:id])
    end
end
