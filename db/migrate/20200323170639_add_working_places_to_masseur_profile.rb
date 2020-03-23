class AddWorkingPlacesToMasseurProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :masseur_profiles, :working_place, :string
  end
end
