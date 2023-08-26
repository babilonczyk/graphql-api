class Types::SolarSystemInputType < GraphQL::Schema::InputObject
  graphql_name "SolarSystemInputType"

  description "Attributes for creating or updating a solar system"

  argument :name, String, required: false, description: "Name of the solar system"
  argument :age_in_bn, Float, required: false, description: "Age of the solar system in billions of years"
  argument :description, String, required: false, description: "Description of the solar system"
end
