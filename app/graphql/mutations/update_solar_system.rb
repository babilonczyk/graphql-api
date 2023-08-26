class Mutations::UpdateSolarSystem < GraphQL::Schema::Mutation
  argument :id, ID, required: true
  argument :input, Types::SolarSystemInputType, required: true, 
    description: "Input attributes for updating a solar system"

  payload_type Boolean

  def resolve(id:, input:)
    solar_system = SolarSystem.find_by(id:)

    false if solar_system.nil?
    
    solar_system.update!(input.to_h) 
  end
end
