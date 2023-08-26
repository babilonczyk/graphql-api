module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :solar_systems, [SolarSystemType], null: false, description: "Returns a list of solar systems"

    def solar_systems
      SolarSystem.all
    end

    field :solar_system, SolarSystemType, null: false, description: "Returns a solar system" do
      argument :id, ID, required: true
    end

    def solar_system(id:)
      SolarSystem.find(id)
    end

    field :stars, [StarType], null: false, description: "Returns a list of stars"

    def stars
      Star.all
    end

    field :star, StarType, null: false, description: "Returns a star" do
      argument :id, ID, required: true
    end

    def star(id:)
      Star.find(id)
    end

    field :planets, [PlanetType], null: false, description: "Returns a list of planets"

    def planets
      Planet.all
    end

    field :planet, PlanetType, null: false, description: "Returns a planet" do
      argument :id, ID, required: true
    end

    def planet(id:)
      Planet.find(id)
    end
  end
end
