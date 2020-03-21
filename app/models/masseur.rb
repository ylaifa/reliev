class Masseur < ApplicationRecord
  after_create :create_profile
  after_create :welcome_send

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :masseur_profile, dependent: :destroy

private

  def create_profile
    MasseurProfile.create(masseur: self)
  end

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
