class ChangeColummnDescription < ActiveRecord::Migration[5.1]
  def change
    change_column :projects, :description_project, :text
    change_column :activities, :description_activity, :text
  end
end
