class MasseurProfile < ApplicationRecord
  belongs_to :masseur

  validates :first_name, presence: true, :on => :update
  validates :last_name, presence: true, :on => :update
  validates :pricing, presence: true, :on => :update
  validates :description, presence: true, :on => :update
  validates :massage_types, presence: true, :on => :update
  validates :time_slots, presence: true, :on => :update
  validates :working_place, presence: true, :on => :update

  MASSAGE_TYPES = ["Suédois", "Californien", "Bulgare", "Thaïlandais", "Japonais", "Express", "Tonique", "Plantaire", "Relaxant"].freeze
  TIME_SLOTS = ["Lundi matin", "Lundi après-midi", "Mardi matin", "Mardi après-midi", "Mercredi matin", "Mercredi après-midi", "Jeudi matin", "Jeudi après-midi", "Vendredi matin", "Vendredi après-midi"].freeze
  WORKING_PLACES = ["Paris", "Bordeaux", "Lyon", "Toulouse"].freeze
end
