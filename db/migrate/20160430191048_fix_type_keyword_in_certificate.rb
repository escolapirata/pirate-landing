class FixTypeKeywordInCertificate < ActiveRecord::Migration
  def change
    remove_column :certificates, :type, :integer
    add_column :certificates, :paid, :integer
  end
end
