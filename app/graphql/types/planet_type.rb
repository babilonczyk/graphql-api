class Types::PlanetType < Types::BaseObject
  graphql_name "PlanetType"
  description "This type represents a star"

  field :id, ID, null: false
  field :name, String, null: false
  field :description, String, null: false
  field :position, Integer, null: false
  field :radious_in_km, Float, null: false
  field :mass, Float, null: false
  field :orbit_in_days, Float, null: false
end

