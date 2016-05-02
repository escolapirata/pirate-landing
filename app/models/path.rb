class Path < ActiveRecord::Base
    belongs_to :path_owner, :class_name => "Entity", foreign_key: "owner_id", inverse_of: "owned_paths"
    belongs_to :path_creator, :class_name => "Entity", foreign_key: "creator_id", inverse_of: "created_paths"
    
    has_attached_file :image, styles: { cover: "800x300#"}
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
    
end
