class CreateCompanyProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :company_profiles do |t|
      t.string :name
      t.belongs_to :company, index: true
      
      t.timestamps
    end
  end
end
