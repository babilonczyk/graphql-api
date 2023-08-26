class CreatePlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.text :description
      t.integer :position
      t.float :radious_in_km
      t.decimal :mass
      t.float :orbit_in_days
      t.references :solar_system, null: false, foreign_key: true

      t.timestamps
    end
  end
end
