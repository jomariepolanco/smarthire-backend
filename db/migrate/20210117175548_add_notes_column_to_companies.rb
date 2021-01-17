class AddNotesColumnToCompanies < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :notes, :text
  end
end
