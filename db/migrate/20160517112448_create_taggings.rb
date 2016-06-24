class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :entity_id
      t.integer :tag_id
      t.integer :activity_id
      t.belongs_to :tag
      t.belongs_to :activity
      t.belongs_to :entity

      t.timestamps null: false
    end
  end
end
