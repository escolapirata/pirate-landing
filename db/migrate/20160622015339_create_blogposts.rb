class CreateBlogposts < ActiveRecord::Migration
  def change
    create_table :blogposts do |t|
      t.string :title
      t.string :subtitle
      t.string :link
      t.string :image
      t.text :body

      t.timestamps null: false
    end
  end
end