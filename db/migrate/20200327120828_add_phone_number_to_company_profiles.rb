class AddPhoneNumberToCompanyProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :company_profiles, :phone_number, :string
  end
end
