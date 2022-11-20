class DropAttrFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :employer
    remove_column :employees, :date_started
    remove_column :employees, :date_employment_ended
   end
end
