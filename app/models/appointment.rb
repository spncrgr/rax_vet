class DateValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value >= Date.today
      record.errors[attribute] << (options[:message] || 'date cannot be in the past')
    end
  end
end

class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :employee

  validates_associated :patient

  validates :date, presence: true, date: true
  validates :reason_for_visit, presence: true
end
