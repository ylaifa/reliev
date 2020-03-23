class AddWorkingPlacesToMasseurProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :masseur_profiles, :working_places, :string, array: true, default: []
  end
end
