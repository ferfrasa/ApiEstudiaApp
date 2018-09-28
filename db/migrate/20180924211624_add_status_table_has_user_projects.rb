class AddStatusTableHasUserProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :has_user_projects, :status, :boolean, default: true
  end
end
