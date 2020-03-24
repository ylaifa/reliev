class ChangePricingToBeIntegerInMasseurProfiles < ActiveRecord::Migration[5.2]
  def change
    change_column :masseur_profiles, :pricing, :integer
  end
end
