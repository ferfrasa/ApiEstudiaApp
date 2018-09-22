class Activity < ApplicationRecord
  belongs_to :status_activity
  belongs_to :type_activity
  belongs_to :project
  has_many :appreciations


  validates :name_activity, presence: true
  validates :description_activity, presence: true
  validates :fecha_activity, presence: true
  validates :lugar_activity, presence: true

end


