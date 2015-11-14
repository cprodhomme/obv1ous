class CreateRoulettes < ActiveRecord::Migration
  def change
    create_table :roulettes do |t|
    	t.string :team
		t.text :strat

		t.timestamps null: false
    end
  end
end
