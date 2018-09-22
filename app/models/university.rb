class University < ApplicationRecord
    has_many :users
    validates :name, presence: true ,uniqueness: true
    before_save :to_upper
end
