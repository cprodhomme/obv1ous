class CreateProfiles < ActiveRecord::Migration
  def change
    create_table(:profiles) do |t|
      t.belongs_to :user, index: true
      t.string :id_steam
      t.string :team

      t.timestamps
    end

  end
end
