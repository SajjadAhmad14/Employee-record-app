class AddAttrToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :first_name, :string
    add_column :employees, :last_name, :string
    add_column :employees, :nick_name, :string
    add_column :employees, :email, :string
    add_column :employees, :employer, :string
    add_column :employees, :phone, :integer
    add_column :employees, :date_started, :date
    add_column :employees, :date_employment_ended, :date
  end
end
