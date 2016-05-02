class AddPaperclip < ActiveRecord::Migration
  def change
    add_attachment :entities, :image
    add_attachment :activities, :image
  end
end
