class CreateEmployeeDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :employee_details do |t|
      t.references :employ, null: false, foreign_key: true
      t.string :department
      t.string :branch
      t.string :designation
      t.decimal :salary

      t.timestamps
    end
  end
end
