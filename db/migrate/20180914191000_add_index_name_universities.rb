class AddIndexNameUniversities < ActiveRecord::Migration[5.1]
  def change
    change_table :universities do |t|
      t.index :name, unique: true
    end
  end
end
