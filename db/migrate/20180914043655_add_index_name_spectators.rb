class AddIndexNameSpectators < ActiveRecord::Migration[5.1]
  def change
    change_table :spectators do |t|
      t.index :name_spectator, unique: true
    end
  end
end
