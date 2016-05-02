class Certificate < ActiveRecord::Base
    has_one :activity, :class_name => "Activity" , primary_key: "activity_id" , foreign_key: "id"
    has_one :owner, :class_name => "Entity" , primary_key: "owner_id", foreign_key: "id"
    has_one :provider, :class_name => "Entity" , primary_key: "provider_id", foreign_key: "id"
end
