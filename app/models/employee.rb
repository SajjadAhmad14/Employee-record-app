class Employee < ApplicationRecord
  validates_length_of :first_name, maximum: 25, allow_blank: false
  validates_length_of :last_name, maximum: 50, allow_blank: false
  validates :email, presence: true
  validates :phone, presence: true
  validates :employer, presence: true
  validates :date_started, presence: true
  validates :date_employment_ended, presence: true
end
