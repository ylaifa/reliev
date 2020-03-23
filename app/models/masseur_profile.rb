class MasseurProfile < ApplicationRecord
  validates :first_name, presence: true, :on => :update
  validates :last_name, presence: true, :on => :update
  validates :price, presence: true, :on => :update
  validates :description, presence: true, :on => :update

  belongs_to :masseur
end
