class Employee < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 35 }
  validates :zip_code, length: { maximum: 5 }
  validates :years_in_practice, inclusion: {within: 0..100}
end
