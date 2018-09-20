class CreateAppreciations < ActiveRecord::Migration[5.1]
  def change
    create_table :appreciations do |t|
      t.integer :calificacion
      t.string :comentario
      t.integer :idActividad
      t.belongs_to :has_user_project, foreign_key: true

      t.timestamps
    end
  end
end
