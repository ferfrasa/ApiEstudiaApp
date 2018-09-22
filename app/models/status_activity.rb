class StatusActivity < ApplicationRecord
    has_many :activities
    validates :name_status_activity, presence: true , uniqueness: true
    before_save :to_upper
    
end
