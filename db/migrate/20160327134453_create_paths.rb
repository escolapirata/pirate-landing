class CreatePaths < ActiveRecord::Migration
  def change
    create_table :paths do |t|
      t.string :name
      t.string :description
      t.integer :owner_id
      t.integer :creator_id
      t.attachment :image
      t.timestamps
      
    end
  end
end
