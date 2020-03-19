class EmployeeProfile < ApplicationRecord
  validates  :first_name, presence: true
  validates  :last_name, presence: true
  
  belongs_to :employee
end
