class MergeEntityUser < ActiveRecord::Migration
  def change
    add_column :entities, :provider, :string
    add_column :entities, :uid, :string
    add_column :entities, :oauth_token, :string
    add_column :entities, :oauth_expires_at, :datetime
    add_column :entities, :urlImage, :string
  end
end



      