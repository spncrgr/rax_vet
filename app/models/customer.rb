class Customer < ActiveRecord::Base
  has_many :patients
  has_many :appointments, through: :patients
end
