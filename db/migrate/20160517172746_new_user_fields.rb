class NewUserFields < ActiveRecord::Migration
  def change
    add_column :users, :inviteCode, :string
    add_column :users, :isRegistered, :boolean
    add_column :users, :registerCompleted, :boolean
    add_column :users, :username, :string, :unique => true
  end
end
