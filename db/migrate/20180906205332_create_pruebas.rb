class CreatePruebas < ActiveRecord::Migration[5.1]
  def change
    create_table :pruebas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
