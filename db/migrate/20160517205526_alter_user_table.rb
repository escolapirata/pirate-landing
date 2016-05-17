class AlterUserTable < ActiveRecord::Migration
  def up
    change_column :users, :isRegistered, :boolean, null: false, default: false 
    change_column :users, :registerCompleted, :boolean, null: false, default: false
  end

  def down
    change_column :users, :isRegistered, :boolean
    change_column :users, :registerCompleted, :boolean
  end
end
