class CreateCompanyProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :company_profiles do |t|
      t.string :name

      t.timestamps
    end
  end
end
