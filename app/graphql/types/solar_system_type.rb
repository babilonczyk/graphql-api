class Types::SolarSystemType < Types::BaseObject
  description "This type represents a solar system"

  field :id, ID, null: false
  field :name, String, null: false
  field :description, String, null: false
  field :age_in_bn, Float, null: false
  field :star, Types::StarType, null: false
  field :planets, [Types::PlanetType], null: false
end
