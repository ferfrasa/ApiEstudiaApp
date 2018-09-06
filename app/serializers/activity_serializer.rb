class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name_activity, :description_activity, :fecha_activity, :lugar_activity
  has_one :status_activity
  has_one :type_activity
end
