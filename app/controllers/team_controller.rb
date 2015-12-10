class TeamController < ApplicationController

    def index
    	@team = TeamMember.order('id asc')
    end

    def show
    	@member = TeamMember.find(params[:id])
        @games = TeamMembersGame.where(team_member_id: params[:id]).all
        @weapons = TeamMembersWeapon.where(team_member_id: params[:id]).all
        @champions = TeamMembersChampion.where(team_member_id: params[:id]).all
    end
end
