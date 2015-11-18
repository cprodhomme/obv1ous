class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|

    	t.string :name
    	t.string :id_steam
    	t.string :color
    	t.string :avatar_color
    	t.text :description
    	t.string :rank_cs
    	t.string :rank_lol
    	t.string :role_cs
    	t.string :role_lol


    	# jeux
    	# armes 
    	# champions

     	t.timestamps
    end
  end
end