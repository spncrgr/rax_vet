class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name, limit: 35
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state, limit: 2
      t.string :zip_code, limit:5
      t.text :school_attended
      t.integer :years_in_practice
      t.boolean :doctor

      t.timestamps null: false
    end
  end
end
