class AddValueDefaultUserUniversity < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :university_id, :integer, default: 5
  end
end
