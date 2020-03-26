class Employee < ApplicationRecord
  after_create :create_profile
  after_create :welcome_send
 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :employee_profile, dependent: :destroy
  belongs_to :company

private

  def create_profile
    EmployeeProfile.create(employee: self)
  end

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
