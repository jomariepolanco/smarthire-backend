class CreateJobApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :job_applications do |t|
      t.integer :candidate_id
      t.integer :open_job_id
      t.boolean :red, default: false
      t.boolean :yellow, default: false
      t.boolean :green, default: false

      t.timestamps
    end
  end
end
