class AddFieldUserFirebase < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :id_firebase, :string
  end
end
