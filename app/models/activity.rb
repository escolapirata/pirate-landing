class Activity < ActiveRecord::Base
    has_many :ownerships
    has_many :entities, through: :ownerships
    has_many :certificates, :class_name => "Certificate" , inverse_of: "activity", foreign_key: "activity_id"
    has_many :taggings
    has_many :tags, through: :taggings
    accepts_nested_attributes_for :tags
    
    has_attached_file :image, styles: { cover: "800x300#"}
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

    def self.tag_counts
      Tag.select("tags.*, count(taggings.tag_id) as count").
        joins(:taggings).group("taggings.tag_id")
    end
    
    def tag_list
      tags.map(&:name).join(", ")
    end
    
    def tag_list=(names)
      self.tags = names.split(",").map do |n|
        Tag.where(name: n.strip).first_or_create!
      end
    end
    def self.tagged_with(name)
      Tag.find_by_name!(name).activities
    end
    
end
