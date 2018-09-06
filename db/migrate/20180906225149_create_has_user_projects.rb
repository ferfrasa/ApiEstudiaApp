class CreateHasUserProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :has_user_projects do |t|
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :rol

      t.timestamps
    end
  end
end
