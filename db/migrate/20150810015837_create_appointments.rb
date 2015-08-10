class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.boolean :require_reminder
      t.text :reason_for_visit

      t.timestamps null: false
    end
  end
end
