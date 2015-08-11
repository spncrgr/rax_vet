class YearsValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if record.doctor
      unless value > 0 || value <= 100
        record.errors[attribute] << (options[:message] || 'is not between 1 and 100')
      end
    end
  end
end
class Employee < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments


  validates :name, presence: true, length: { maximum: 35 }
  validates :zip_code, length: { maximum: 5 }
  validates :years_in_practice, years: true
end
