class Activity < ActiveRecord::Base
    has_many :ownerships
    has_many :entities, through: :ownerships
    
    has_attached_file :image, styles: { cover: "800x300#"}
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
