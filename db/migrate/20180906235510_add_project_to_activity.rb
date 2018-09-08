class AddProjectToActivity < ActiveRecord::Migration[5.1]
  def change
    add_reference :activities, :project, foreign_key: true
  end
end
