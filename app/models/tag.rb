class Tag < ActiveRecord::Base
    has_many :taggings
    has_many :activities, through: :taggings
    has_many :entities, through: :taggings
    validates_uniqueness_of :name
    
    def self.list_from_activity(id)
        #Tagging.where(activity_id: id).map {|k| Tag.find(k.tag_id).name}
        Activity.find(id).tags.map { |k| k.name }
    end
end
