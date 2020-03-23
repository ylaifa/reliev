class AddTimeSlotsToMasseurProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :masseur_profiles, :time_slots, :string
  end
end
