class Tag < ApplicationRecord
    has_many :has_project_tag
    has_many :projects, through: :has_project_tag
    validates :name_tag, presence: true ,uniqueness: true
    validates :color_tag, presence: true 

    
end
