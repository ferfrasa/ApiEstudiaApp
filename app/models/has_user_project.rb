class HasUserProject < ApplicationRecord
  belongs_to :project
  belongs_to :user
  has_many :appreciations
  validates :rol, presence: true
  
end
