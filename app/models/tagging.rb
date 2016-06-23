class Tagging < ActiveRecord::Base
    belongs_to :activity
    belongs_to :entity
    belongs_to :tag
end
