class AddCityToCompanyProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :company_profiles, :city, :string
  end
end
