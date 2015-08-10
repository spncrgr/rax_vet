class Patient < ActiveRecord::Base
  belongs_to :customer
  has_many :appointments
  has_many :encounters

  validates :name, presence: true, length: {maximum: 35}
  validates :pet_type, inclusion: {in: %w(dog, cat, bird)}
  validates :breed, presence: true
  validates :age, presence: true
  validates :weight, presence: true
  validates :date_of_last_appointment, presence: true
end
