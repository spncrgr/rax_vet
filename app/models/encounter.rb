class Encounter < ActiveRecord::Base
  belongs_to :patient
  belongs_to :employee

  validates_associated :patient
end
