module Types
  class MutationType < Types::BaseObject
    field :create_solar_system, Types::SolarSystemType, mutation: Mutations::CreateSolarSystem,
      description: "Create a solar system"

    field :update_solar_system, Boolean, mutation: Mutations::UpdateSolarSystem,
      description: "Update a solar system"

    field :delete_solar_system, Boolean, mutation: Mutations::DeleteSolarSystem,
      description: "Delete a solar system" 
  end
end
