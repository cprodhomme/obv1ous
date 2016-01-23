class TeamController < ApplicationController

    def index
    	@team = TeamMember.order('id asc')
    end

    def show
        require 'net/http'
        require 'uri'
        require 'json'

    	@member = TeamMember.find(params[:id])
        @games = TeamMembersGame.where(team_member_id: params[:id]).all
        @weapons = TeamMembersWeapon.where(team_member_id: params[:id]).all
        @champions = TeamMembersChampion.where(team_member_id: params[:id]).all


          	source = 'http://api.steampowered.com/ISteamUserStats/GetUserStatsForGame/v0002/?appid=730&key=400CE5B4A6702A1A9EFD2822BC461A9D&steamid='+@member.id_steam

          	uri = URI(source)
            response = Net::HTTP.get(uri)
            @data_api = JSON.parse(response)

                @data_api['playerstats']['stats'].each do |k,v|

                        case k['name']
                            when "total_kills"
                                @total_kill = k['value']
                            when "total_deaths"
                                @total_death = k['value']
                            when "total_rounds_played"
                                @total_rounds_played = k['value']
                            when "total_mvps"
                                @total_mvps = k['value']
                            when "total_kills_headshot"
                                @total_kills_headshot = k['value']
                            when "last_match_kills"
                                @last_match_kills = k['value']
                            when "last_match_deaths"
                                @last_match_deaths = k['value']
                            when "last_match_mvps"
                                @last_match_mvps = k['value']
                            when "last_match_contribution_score"
                                @last_match_contribution_score = k['value']
                            end

                            @ratioKD = (@total_kill / @total_death.to_f).round(2)
                            @killByRound = (@total_kill / @total_rounds_played.to_f).round(1)
                end

    end
end
