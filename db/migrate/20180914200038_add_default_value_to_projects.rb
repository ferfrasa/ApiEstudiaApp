class AddDefaultValueToProjects < ActiveRecord::Migration[5.1]
 
  def up
    change_column :projects, :status_project, :boolean, default: true
   
  end
  
  #def down
   # change_column :projects, :status_project, :boolean, default: true
  #end

end
