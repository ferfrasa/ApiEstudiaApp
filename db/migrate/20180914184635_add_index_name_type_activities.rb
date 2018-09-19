class AddIndexNameTypeActivities < ActiveRecord::Migration[5.1]
  def change
    change_table :type_activities do |t|
      t.index :name_type_activity, unique: true
    end
  end
end
