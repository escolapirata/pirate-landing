class Activity < ActiveRecord::Base
    has_many :ownerships
    has_many :entities, through: :ownerships
    has_many :certificates, :class_name => "Certificate" , inverse_of: "activity", foreign_key: "activity_id"
    has_many :taggings
    has_many :tags, through: :taggings
    
    has_attached_file :image, styles: { cover: "800x300#"}
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
    
    def self.tagged_with(name)
      Tag.find_by_name!(name).activities
    end
end
