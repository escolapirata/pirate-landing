class UpdateOwnershipTables < ActiveRecord::Migration
  def change
    remove_column :activities, :timestamps, :string
    remove_column :activities, :owner, :integer
    create_table :ownerships do |t|
      t.integer :entity_id
      t.integer :activity_id
    end
  end
end
