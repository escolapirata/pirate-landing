class Entity < ActiveRecord::Base
    has_many :ownerships
    has_many :activities, through: :ownerships
    has_many :owned_paths, :class_name => "Path" , inverse_of: "path_owner", foreign_key: "owner_id"
    has_many :created_paths, :class_name => "Path", inverse_of: "path_creator", foreign_key: "creator_id"
    has_many :certificates, :class_name => "Certificate" , inverse_of: "owner", foreign_key: "owner_id"
    has_many :taggings
    has_many :tags, through: :taggings
    
    has_attached_file :image, styles: { small: "64x64#", square: "200x200#", large: "600x600#"}
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
    
end
