class CreateAppreciations < ActiveRecord::Migration[5.1]
  def change
    create_table :appreciations do |t|
      t.integer :calificacion
      t.string :comentario
      t.belongs_to :user, foreign_key: true
      t.belongs_to :activity,foreign_key: true

      t.timestamps
    end
  end
end
