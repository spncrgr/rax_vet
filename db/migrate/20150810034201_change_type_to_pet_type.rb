class ChangeTypeToPetType < ActiveRecord::Migration
  def change
    change_table :patients do |t|
      t.rename :type, :pet_type
    end
  end
end
