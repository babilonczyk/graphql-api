require "rails_helper"

describe "deleteSolarSystem Mutation", type: :request do
  subject { post graphql_path, params: { query: query } }

  let!(:solar_system) { create(:solar_system) }

  let(:query) do
    <<~GQL
      mutation {
        deleteSolarSystem(
          id: #{solar_system.id}
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

      expect(json["data"]["deleteSolarSystem"]).to eq(true)
    end

    it "deletes the record" do
      expect { subject }.to change { SolarSystem.count }.by(-1)
    end
  end
end
