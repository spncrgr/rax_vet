class CreateEncounters < ActiveRecord::Migration
  def change
    create_table :encounters do |t|
      t.datetime :date_time_started
      t.datetime :date_time_ended
      t.boolean :requires_follow_up
      t.string :follow_up_in
      t.text :diagnoses
      t.text :prescriptions
      t.text :notes

      t.timestamps null: false
    end
  end
end
