class Appreciation < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  validates :calificacion, presence: true
end
