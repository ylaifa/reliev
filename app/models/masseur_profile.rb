class MasseurProfile < ApplicationRecord
  validates :first_name, presence: true, :on => :update
  validates :last_name, presence: true, :on => :update
  validates :price, presence: true, :on => :update
  validates :description, presence: true, :on => :update

  belongs_to :masseur

  MASSAGE_TYPES = ["Suédois", "Californien", "Bulgare", "Thaïlandais", "Japonais", "Express", "Tonique", "Plantaire", "Relaxant"].freeze
  TIME_SLOTS = ["Lundi matin", "Lundi après-midi", "Mardi matin", "Mardi après-midi", "Mercredi matin", "Mercredi après-midi", "Jeudi matin", "Jeudi après-midi", "Vendredi matin", "Vendredi après-midi"].freeze
  WORKING_PLACES = ["Paris", "Bordeaux", "Lyon", "Toulouse"].freeze
end
