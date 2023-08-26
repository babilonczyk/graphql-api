class CreateSolarSystems < ActiveRecord::Migration[7.0]
  def change
    create_table :solar_systems do |t|
      t.string :name
      t.text :description
      t.float :age_in_bn

      t.timestamps
    end
  end
end
