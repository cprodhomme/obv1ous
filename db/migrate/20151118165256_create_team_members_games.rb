class CreateTeamMembersGames < ActiveRecord::Migration
  def change
    create_table :team_members_games do |t|

    	t.belongs_to :team_member, index: true
    	t.string :name_game

     	t.timestamps null: false
    end
  end
end
