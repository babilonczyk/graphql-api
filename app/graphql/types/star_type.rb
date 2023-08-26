class Types::StarType < Types::BaseObject
  graphql_name "StarType"
  description "This type represents a star"

  field :id, ID, null: false
  field :name, String, null: false
  field :description, String, null: false
  field :radious_in_km, Float, null: false
  field :mass, Float, null: false
  field :surface_temperature_in_k, Float, null: false
end

