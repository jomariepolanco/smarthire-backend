class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.boolean :archived
      t.string :date
      t.integer :project_id
      t.text :content

      t.timestamps
    end
  end
end
