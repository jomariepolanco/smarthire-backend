class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :industry
      t.string :address
      t.string :poc_name
      t.string :poc_email
      t.string :poc_number
      t.integer :user_id

      t.timestamps
    end
  end
end
