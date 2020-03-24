class MasseurProfile < ApplicationRecord
  belongs_to :masseur

  MASSAGE_TYPES = ["Suédois", "Californien", "Bulgare", "Thaïlandais", "Japonais", "Express", "Tonique", "Plantaire", "Relaxant"].freeze
  TIME_SLOTS = ["Lundi matin", "Lundi après-midi", "Mardi matin", "Mardi après-midi", "Mercredi matin", "Mercredi après-midi", "Jeudi matin", "Jeudi après-midi", "Vendredi matin", "Vendredi après-midi"].freeze
  WORKING_PLACES = ["Paris", "Bordeaux", "Lyon", "Toulouse"].freeze
end
