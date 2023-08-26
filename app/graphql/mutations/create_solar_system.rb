class Mutations::CreateSolarSystem < GraphQL::Schema::Mutation
  argument :input, Types::SolarSystemInputType, required: true, 
    description: "Input attributes for creating a solar system"

  payload_type Types::SolarSystemType

  def resolve(input:)
    SolarSystem.create!(input.to_h)
  end
end
