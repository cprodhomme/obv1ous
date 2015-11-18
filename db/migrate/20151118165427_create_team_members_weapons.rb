class CreateTeamMembersWeapons < ActiveRecord::Migration
  def change
    create_table :team_members_weapons do |t|

    	t.belongs_to :team_members, index: true
    	t.string :name_weapon

      	t.timestamps null: false
    end
  end
end
