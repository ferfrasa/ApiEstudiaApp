class CreateAppreciations < ActiveRecord::Migration[5.1]
  def change
    create_table :appreciations do |t|
      t.references :has_user_project, foreign_key: true
      t.string :comentario
      t.integer :calificacion
      t.integer :idActivity

      t.timestamps
    end
  end
end
