class Ownership < ActiveRecord::Base
    belongs_to :activity
    belongs_to :entity
end
