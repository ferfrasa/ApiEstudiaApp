class Project < ApplicationRecord
  belongs_to :category
  belongs_to :spectator
  has_many :activities
  has_many :tags, through: :has_project_tag
  has_many :users, through: :has_user_project 
  validates :name_project, presence: true
  validates :description_project, presence: true
  validates :status_project, presence: true
  
  #validar que al crear x proyecto sea true
end


