class Project < ApplicationRecord
  belongs_to :category
  belongs_to :spectator
  has_many :activities
  has_many :has_project_tag, dependent: :destroy 
  has_many :tags, through: :has_project_tag
  has_many :users, through: :has_user_project 
  validates :name_project, presence: true
  validates :description_project, presence: true
  validates :status_project, presence: true
  accepts_nested_attributes_for :tags
  
  #validar que al crear x proyecto sea true

  before_create->{self.code_project= generate_code}

  private
  def generate_code
  loop do
    code_project= SecureRandom.hex(10)
      return code_project unless Project.exists?({code_project:code_project})     
  end 
  end
end


