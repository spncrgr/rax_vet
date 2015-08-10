class Customer < ActiveRecord::Base
  has_many :patients
end
