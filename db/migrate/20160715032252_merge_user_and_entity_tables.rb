class MergeUserAndEntityTables < ActiveRecord::Migration
  def change
    drop_table :users
    add_column :entities, :type, :string
  end
end
