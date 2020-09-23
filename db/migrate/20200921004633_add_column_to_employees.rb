class AddColumnToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :name, :string
    add_column :employees, :title, :string
    add_column :employees, :company_id, :integer
  end
end
