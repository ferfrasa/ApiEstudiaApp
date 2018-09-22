class TypeActivity < ApplicationRecord
    has_many :activities
    validates :name_type_activity, presence: true, uniqueness: true
    before_save :to_upper
end
