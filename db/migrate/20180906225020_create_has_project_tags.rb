class CreateHasProjectTags < ActiveRecord::Migration[5.1]
  def change
    create_table :has_project_tags do |t|
      t.references :project, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
