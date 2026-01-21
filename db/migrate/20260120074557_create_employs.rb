class CreateEmploys < ActiveRecord::Migration[7.1]
  def change
    create_table :employs do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :phone_number
      t.string :gender
      t.text :address
      t.string :refno

      t.timestamps
    end
  end
end
