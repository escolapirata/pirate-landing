class NewParamsForEntityAndActivity < ActiveRecord::Migration
  def change
    add_column :activities, :intro, :string
    add_column :activities, :description, :string
    add_column :activities, :content, :string
    add_column :entities, :intro, :string
    rename_column :certificates, :private_commente, :private_comment
  end
end
