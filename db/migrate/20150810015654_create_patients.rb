class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :type
      t.string :breed
      t.float :age
      t.float :weight
      t.datetime :date_of_last_appointment

      t.timestamps null: false
    end
  end
end
