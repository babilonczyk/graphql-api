require "rails_helper"

describe "updateSolarSystem Mutation", type: :request do
  subject { post graphql_path, params: { query: query } }

  let!(:solar_system) { create(:solar_system) }

  let(:query) do
    <<~GQL
      mutation {
        updateSolarSystem(
          id: #{solar_system.id}
          name: "Solar System"
          description: "The Solar System is the gravitationally bound system of the Sun and the objects that orbit it, either directly or indirectly."
          ageInBn: 1.6
        )
      }
    GQL
  end

  context "when authentication passed" do
    it "returns a successful response" do
      subject
      expect(response).to be_successful
    end

    it "returns the correct data" do
      subject
      json = JSON.parse(response.body)

      expect(json["data"]["updateSolarSystem"]).to eq(true)
    end

    it "updates the record" do
      subject
      expect(solar_system.reload).to have_attributes(
        name: "Solar System",
        description: "The Solar System is the gravitationally bound system of the Sun and the objects that orbit it, either directly or indirectly.",
        age_in_bn: 1.6
      )
    end
  end
end
