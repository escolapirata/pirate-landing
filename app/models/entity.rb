class Entity < ActiveRecord::Base
    has_many :ownerships
    has_many :activities, through: :ownerships
    
    has_attached_file :image, styles: { small: "64x64#", square: "200x200#", large: "600x600#"}
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
