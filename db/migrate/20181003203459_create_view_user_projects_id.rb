class CreateViewUserProjectsId < ActiveRecord::Migration[5.1]
  def up
    self.connection.execute %Q( CREATE OR REPLACE VIEW project_user AS
      SELECT u.id as usuario, p.id as proyecto,
      p.name_project,
      p.description_project,
      p.prom_calif_project,
      p.status_project,
      p.code_project,
      p.category_id,
      p.spectator_id,
      h.rol,
      h.created_at
     FROM projects p
       JOIN has_user_projects h ON p.id = h.project_id
       JOIN users u ON u.id = h.user_id
     GROUP BY  p.id ,u.id, h.rol,h.created_at order by h.created_at, u.id;
                )
   
  end
  def down
    self.connection.execute "DROP VIEW IF EXISTS project_user;"
 end
end


