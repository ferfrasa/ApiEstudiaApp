class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :doc
      t.string :password_digest
      t.belongs_to :user_type, foreign_key: true
      t.belongs_to :university, foreign_key: true

      t.timestamps
    end
  end
end
