class AddTimeSlotsToMasseurProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :masseur_profiles, :time_slots, :string, array: true, default: []
  end
end
