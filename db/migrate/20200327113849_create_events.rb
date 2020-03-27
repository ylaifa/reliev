class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :masseur
      t.string :participating_employees
      t.string :moment
      t.interger :maximum_number_of_participation

      t.timestamps
    end
  end
end
