class CreateCandidateCalls < ActiveRecord::Migration[6.1]
  def change
    create_table :candidate_calls do |t|
      t.date :date
      t.time :time, default: nil
      t.text :notes
      t.integer :user_id
      t.integer :candidate_id

      t.timestamps
    end
  end
end
