class AddCompanyRefToEmployeeProfiles < ActiveRecord::Migration[5.2]
  def change
    add_reference :employee_profiles, :company, foreign_key: true
  end
end
