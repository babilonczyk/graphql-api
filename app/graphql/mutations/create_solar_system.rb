class Mutations::CreateSolarSystem < GraphQL::Schema::Mutation
  argument :name, String, required: true
  argument :age_in_bn, Float, required: true
  argument :description, String, required: true

  def resolve(name:, age_in_bn:, description:)
    SolarSystem.create!(
      name: name,
      age_in_bn: age_in_bn,
      description: description
    )
  end
end
