class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.integer :provider_id
      t.integer :owner_id
      t.integer :grade
      t.integer :type
      t.string :public_comment
      t.string :private_commente
      t.integer :activity_id
      t.timestamps
    end
  end
end
