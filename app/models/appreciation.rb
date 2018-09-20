class Appreciation < ApplicationRecord
  belongs_to :has_user_project
  validates :calificacion, presence: true
  validates :idActividad, presence: true
end
