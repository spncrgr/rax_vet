class Patient < ActiveRecord::Base
  belongs_to :customer
  has_many :appointments
  has_many :encounters
end
