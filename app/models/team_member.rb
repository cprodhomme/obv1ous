class TeamMember < ActiveRecord::Base

	mount_uploader :avatar, AvatarUploader

	has_many :team_members_game
	accepts_nested_attributes_for :team_members_game
	has_many :team_members_weapon
	has_many :team_members_champion
end
