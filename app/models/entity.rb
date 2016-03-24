class Entity < ActiveRecord::Base
    has_many :ownerships
    has_many :activities, through: :ownerships
end
