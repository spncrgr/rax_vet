class Patient < ActiveRecord::Base
  belongs_to :customer
  has_many :appointments
  has_many :encounters
  has_many :employees, through: :appointments

  validates :name, presence: true, length: {maximum: 35}
  validates :pet_type, inclusion: { in: %w(dog cat bird),
                                    message: '%{value} is not a valid pet type'}
  validates :breed, presence: true
  validates :age, presence: true
  validates :weight, presence: true
  validates :date_of_last_appointment, presence: true
end
