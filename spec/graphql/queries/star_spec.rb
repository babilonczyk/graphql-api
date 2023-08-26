require 'rails_helper'

describe 'star Query', type: :request do
  subject { post graphql_path, params: { query: query } }

  let(:query) do
    <<~GQL
      {
        star(id: #{star.id}) {
          name
        }
      }
    GQL
  end
  
  let(:solar_system) { create(:solar_system) }
  let!(:star) { create(:star, solar_system: solar_system) }
  
  context "when authentication passed" do 
    it "returns a successful response" do
      subject
      expect(response).to be_successful
    end
    
    it "returns the correct data" do
      subject
      json = JSON.parse(response.body)

      expect(json["data"]["star"]).to eq(
        { "name" => star.name }
      )
    end
  end
end
