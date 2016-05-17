class UserFields < ActiveRecord::Migration
  def change
    add_column :users, :inviteCode, :string
    add_column :users, :isRegistered, :bool
    add_column :users, :registerCompleted, :bool
    add_column :users, :username, :string, :unique => true
  end
end
