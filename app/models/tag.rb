class Tag < ActiveRecord::Base
    has_many :taggings
    has_many :activities, through: :taggings
    has_many :entities, through: :taggings
end
