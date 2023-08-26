class CreateStars < ActiveRecord::Migration[7.0]
  def change
    create_table :stars do |t|
      t.string :name
      t.text :description
      t.float :radious_in_km
      t.decimal :mass
      t.decimal :surface_temperature_in_k
      t.references :solar_system, null: false, foreign_key: true

      t.timestamps
    end
  end
end
