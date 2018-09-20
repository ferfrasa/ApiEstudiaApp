class CreateHasUserProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :has_user_projects do |t|
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.boolean :rol

      t.timestamps
    end
  end
end
