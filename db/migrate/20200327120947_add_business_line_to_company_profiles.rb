class AddBusinessLineToCompanyProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :company_profiles, :business_line, :string
  end
end
