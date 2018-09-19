class AddIndexNameTags < ActiveRecord::Migration[5.1]
  def change
    change_table :tags do |t|
      t.index :name_tag, unique: true
    end
  end
end
