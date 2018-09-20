class HasUserProject < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :appreciations
end
