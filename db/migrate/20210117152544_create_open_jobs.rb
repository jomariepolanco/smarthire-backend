class CreateOpenJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :open_jobs do |t|
      t.string :title
      t.string :description
      t.integer :pay
      t.date :due_date
      t.integer :user_id
      t.integer :company_id

      t.timestamps
    end
  end
end
