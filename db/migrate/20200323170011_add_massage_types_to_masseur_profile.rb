class AddMassageTypesToMasseurProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :masseur_profiles, :massage_types, :string, array: true, default: []
  end
end
