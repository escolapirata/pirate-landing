class FieldsEntityTable < ActiveRecord::Migration
  def change
    add_column :entities, :inviteCode, :string
    add_column :entities, :isRegistered, :boolean, null: false, default: false
    add_column :entities, :registerCompleted, :boolean, null: false, default: false
    add_column :entities, :username, :string, :unique => true
  end
end
