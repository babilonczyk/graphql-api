class Mutations::DeleteSolarSystem < GraphQL::Schema::Mutation
  argument :id, ID, required: true

  payload_type Boolean

  def resolve(id:)
    solar_system = SolarSystem.find_by(id:)

    false if solar_system.nil?
    
    solar_system.destroy!
  end
end
