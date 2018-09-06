class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name_project
      t.string :description_project
      t.string :code_project
      t.boolean :status_project
      t.float :prom_calif_project
      t.belongs_to :category, foreign_key: true
      t.belongs_to :spectator, foreign_key: true

      t.timestamps
    end
  end
end
