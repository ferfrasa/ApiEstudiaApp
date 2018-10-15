class CreateViewInfoActivities < ActiveRecord::Migration[5.1]
  def up
    self.connection.execute %Q( CREATE OR REPLACE VIEW activity_info AS
      select a.* , p.name_project ,h.user_id   from activities a 
      inner join  projects p on a.project_id=p.id
      inner join  has_user_projects h on h.project_id =p.id
      inner join users u on u.id= h.user_id order by p.name_project 
                )
  
  end
  def down
     self.connection.execute "DROP VIEW IF EXISTS activity_info;"
  end
end
