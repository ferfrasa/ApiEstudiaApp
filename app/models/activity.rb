class Activity < ApplicationRecord
  belongs_to :status_activity
  belongs_to :type_activity
  belongs_to :project

  validates :name_activity, presence: true
  validates :description_activity, presence: true
  validates :fecha_activity, presence: true

end


