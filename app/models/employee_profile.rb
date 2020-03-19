class EmployeeProfile < ApplicationRecord
  validates  :first_name, presence: true, :on => :update
  validates  :last_name,  presence: true, :on => :update

  belongs_to :employee
end
