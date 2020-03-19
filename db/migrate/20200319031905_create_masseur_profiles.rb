class CreateMasseurProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :masseur_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.decimal :pricing

      t.timestamps
    end
  end
end
