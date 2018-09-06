class Activity < ApplicationRecord
  belongs_to :status_activity
  belongs_to :type_activity
end
