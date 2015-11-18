class CreateTeamMembersChampions < ActiveRecord::Migration
  def change
    create_table :team_members_champions do |t|
    	t.belongs_to :team_members, index: true
    	t.string :name_champion

      	t.timestamps null: false
    end
  end
end
