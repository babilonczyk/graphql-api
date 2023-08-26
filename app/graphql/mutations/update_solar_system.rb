class Mutations::UpdateSolarSystem < GraphQL::Schema::Mutation
  argument :id, ID, required: true
  argument :name, String, required: false
  argument :age_in_bn, Float, required: false
  argument :description, String, required: false

  payload_type Boolean

  def resolve(id:, **attributes)
    solar_system = SolarSystem.find_by(id:)

    false if solar_system.nil?
    
    solar_system.update!(attributes) 
  end
end
