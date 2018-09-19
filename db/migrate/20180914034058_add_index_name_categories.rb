class AddIndexNameCategories < ActiveRecord::Migration[5.1]
  def change
    change_table :categories do |t|
      t.index :name_category, unique: true
    end
  end
end
