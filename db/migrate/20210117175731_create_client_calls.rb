class CreateClientCalls < ActiveRecord::Migration[6.1]
  def change
    create_table :client_calls do |t|
      t.date :date
      t.time :time
      t.text :notes
      t.integer :user_id
      t.integer :company_id

      t.timestamps
    end
  end
end
