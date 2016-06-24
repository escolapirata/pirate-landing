class Droptable < ActiveRecord::Migration
  def change
    create_table "users", force: :cascade do |t|
      t.string   "provider"
      t.string   "uid"
      t.string   "name"
      t.string   "oauth_token"
      t.datetime "oauth_expires_at"
      t.datetime "created_at",       null: false
      t.datetime "updated_at",       null: false
      t.string   "email"
      t.string   "urlImage"
      t.string "inviteCode"
      t.boolean "isRegistered"
      t.boolean "registerCompleted"
      t.string "username"
    end
  end
end
