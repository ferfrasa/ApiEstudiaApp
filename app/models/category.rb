class Category < ApplicationRecord
    has_many :projects
    has_many :articles, through: :has_category_as

    validates :name_category, presence: true
    before_save :to_upper
end
