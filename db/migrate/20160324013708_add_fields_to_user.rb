class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :urlImage, :string
  end
end
