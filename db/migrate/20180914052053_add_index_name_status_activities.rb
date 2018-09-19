class AddIndexNameStatusActivities < ActiveRecord::Migration[5.1]
  def change
    change_table :status_activities do |t|
      t.index :name_status_activity, unique: true
    end
  end
end
