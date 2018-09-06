class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :name_activity
      t.string :description_activity
      t.datetime :fecha_activity
      t.string :lugar_activity
      t.belongs_to :status_activity, foreign_key: true
      t.belongs_to :type_activity, foreign_key: true

      t.timestamps
    end
  end
end
