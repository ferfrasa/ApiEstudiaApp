class CreateViewLisp < ActiveRecord::Migration[5.1]
    def up
      self.connection.execute %Q( CREATE OR REPLACE VIEW project_par AS
        SELECT p.id,
        p.name_project,
        p.description_project,
        p.prom_calif_project,
        p.code_project,
        p.status_project,
        date_trunc('hour', p.created_at) as fecha,
        p.category_id,
        c.name_category,
        p.spectator_id,
        s.name_spectator,
        count(h.id) AS participantes
       FROM projects p
         JOIN has_user_projects h ON p.id = h.project_id
         JOIN users u ON u.id = h.user_id 
         inner join categories c on c.id=p.category_id 
         inner join spectators s on s.id= p.spectator_id
      GROUP BY p.id,c.name_category, s.name_spectator;
                  )
  
  
                
    end
    def down
       self.connection.execute "DROP VIEW IF EXISTS project_par;"
    end
  end
