class AddDefaultValueCalifToProjects < ActiveRecord::Migration[5.1]
  def up
    change_column :projects, :prom_calif_project, :float, default: 0
  end
end
