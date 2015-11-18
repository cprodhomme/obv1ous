class TeamMember < ActiveRecord::Base

	mount_uploader :avatar, AvatarUploader

	has_many :team_members_games
	has_many :team_members_weapons
	has_many :team_members_champions
end
