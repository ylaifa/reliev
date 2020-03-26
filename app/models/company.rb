class Company < ApplicationRecord
  after_create :create_profile
  after_create :welcome_send

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseInvitable::Inviter
  has_one :company_profile
  has_many :invitations, class_name: self.to_s, as: :invited_by
  has_many :employees

  def create_profile
    CompanyProfile.create(company: self)
  end
  
  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
