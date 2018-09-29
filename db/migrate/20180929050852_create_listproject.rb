class CreateListproject < ActiveRecord::Migration[5.1]
  def up
    self.connection.execute %Q( CREATE OR REPLACE VIEW project_par AS
      select p.id,p.name_project, p.description_project, 
      p.prom_calif_project,p.category_id, p.spectator_id ,count(h.id) participantes
      from projects p inner join has_user_projects h on 
      p.id=h.project_id inner join users u on u.id=h.user_id 
      group by( p.id ) ;
                )
  end
  def down
     self.connection.execute "DROP VIEW IF EXISTS project_par;"
  end
end
