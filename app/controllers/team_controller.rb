class TeamController < ApplicationController

    def index
    	@team = TeamMember.order('id desc')
    end

    def show
    	@member = TeamMember.find(params[:id])
    end
end
