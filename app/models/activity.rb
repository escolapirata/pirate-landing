class Activity < ActiveRecord::Base
    has_many :ownerships
    has_many :entities, through: :ownerships
    has_many :certificates, :class_name => "Certificate" , inverse_of: "activity", foreign_key: "activity_id"
    has_many :taggings
    has_many :tags, through: :taggings
    accepts_nested_attributes_for :tags
    
    has_attached_file :image, styles: { cover: "800x300#"}
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
    
    def self.tagged_with(name)
      Tag.find_by_name!(name).activities
    end
    
    def add_tags(tags)
      if tags(:tags)
        print "Trying to add this tags:" + tags(:tags).to_s + "to this activity:" + self.name
        new_tags = tags(:tags)
        #tags(:tags).each do |this_tag|
        #  create = Tag.new
        #  create = Tag.first_or_create("this_tag")
        #  new_tags << create
        #end
        activity = self
        activity.tags = new_tags
        activity.save
      else
        print "No tags passed as parameter"
      end
    end
      

end
