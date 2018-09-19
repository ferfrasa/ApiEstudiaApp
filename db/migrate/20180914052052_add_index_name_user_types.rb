class AddIndexNameUserTypes < ActiveRecord::Migration[5.1]
  def change
    change_table :user_types do |t|
      t.index :name, unique: true
    end  
  end
end
