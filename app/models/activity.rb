class Activity < ActiveRecord::Base
    has_many :ownerships
    has_many :entities, through: :ownerships
end
