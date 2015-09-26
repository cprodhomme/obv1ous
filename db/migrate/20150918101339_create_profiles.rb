class CreateProfiles < ActiveRecord::Migration
  def change
    create_table(:profiles) do |t|
      t.belongs_to :user, index: true
      t.string :username
      t.string :id_steam

      t.timestamps
    end

  end
end
