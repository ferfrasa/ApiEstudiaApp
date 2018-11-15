class CreateViewInfoActivities < ActiveRecord::Migration[5.1]
  def up
    self.connection.execute %Q( CREATE OR REPLACE VIEW activity_info AS
      SELECT a.id,
    a.name_activity,
    a.description_activity,
    a.fecha_activity,
    a.lugar_activity,
    a.status_activity_id,
    s.name_status_activity,
    a.type_activity_id,
    t.name_type_activity,
    a.created_at,
    a.updated_at,
    a.project_id,
    p.name_project,
    h.user_id
   FROM activities a
     JOIN projects p ON a.project_id = p.id
     JOIN has_user_projects h ON h.project_id = p.id
     JOIN users u ON u.id = h.user_id
     JOIN status_activities s on s.id=a.status_activity_id
     JOIN type_activities t on t.id=a.type_activity_id
  ORDER BY a.fecha_activity asc;
                )
  
  end
  def down
     self.connection.execute "DROP VIEW IF EXISTS activity_info;"
  end
end
