class Employee < ApplicationRecord
  validates_length_of :first_name, maximum: 25, allow_blank: false
  validates_length_of :last_name, maximum: 50, allow_blank: false
  validates :email, presence: true
  validates :phone, presence: true
end
