class MasseurProfile < ApplicationRecord
  belongs_to :masseur
  accepts_nested_attributes_for :avatar
end
