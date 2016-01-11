class ChangeUserAdmin < ActiveRecord::Migration
  def change
  	change_table :users do |t|
      t.change :admin, :boolean, :default => false
    end
  end
end
