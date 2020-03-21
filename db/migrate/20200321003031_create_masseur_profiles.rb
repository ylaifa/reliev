class CreateMasseurProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :masseur_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.decimal :pricing
      t.text :description
      t.belongs_to :masseur, index: true

      t.timestamps
    end
  end
end
