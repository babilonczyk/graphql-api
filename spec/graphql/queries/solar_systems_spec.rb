require 'rails_helper'

describe 'solar_systems Query', type: :request do
  subject { post graphql_path, params: { query: query } }

  let(:query) do
    <<~GQL
      {
        solarSystems {
          name
          description
          ageInBn
          planets {
            name
          }
          star{
            name
          }
        }
      }
    GQL
  end
  
  let!(:solar_system) { create(:solar_system, :with_star_and_planets) }
  
  context "when authentication passed" do 
    it "returns a successful response" do
      subject
      expect(response).to be_successful
    end
    
    it "returns the correct data" do
      subject
      json = JSON.parse(response.body)

      expect(json["data"]["solarSystems"]).to match_array(
        [
          {
            "name" => solar_system.name,
            "description" => solar_system.description,
            "ageInBn" => solar_system.age_in_bn,
            "planets" => [
              {"name" => solar_system.planets[0].name }, 
              {"name" => solar_system.planets[1].name }, 
              {"name" => solar_system.planets[2].name }
            ],
            "star" => {
              "name" => solar_system.star.name
            }
          }
        ]
      )
    end
  end
end
