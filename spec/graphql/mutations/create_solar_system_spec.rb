require "rails_helper"

describe "createSolarSystem Mutation", type: :request do
  subject { post graphql_path, params: { query: query, variables: variables }, as: :json }

  let(:input) do
    {
      name: "Solar System",
      description: "The Solar System is the gravitationally bound system of the Sun and the objects that orbit it, either directly or indirectly.",
      ageInBn: 4.6
    }
  end

  let(:query) do
    <<~GQL
      mutation createSolarSystem($input: SolarSystemInputType!) {
        createSolarSystem(input: $input) {
          name
          description
          ageInBn
        }
      }
    GQL
  end

  let(:variables) do
    {
      input: input
    }
  end

  context "when authentication passed" do
    it "returns a successful response" do
      subject
      expect(response).to be_successful
    end

    it "returns the correct data" do
      subject
      json = JSON.parse(response.body)

      expect(json["data"]["createSolarSystem"]).to eq(
        {
          "name" => "Solar System",
          "description" => "The Solar System is the gravitationally bound system of the Sun and the objects that orbit it, either directly or indirectly.",
          "ageInBn" => 4.6
        }
      )
    end
  end
end
