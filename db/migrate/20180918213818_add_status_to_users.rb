class AddStatusToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :status_user, :boolean, default: true
  end
end
