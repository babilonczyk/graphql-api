FactoryBot.define do
  factory :star do
    name { Faker::Space.star }
    description { Faker::Lorem.paragraph }
    radious_in_km { Faker::Number.decimal(l_digits: 2) }
    mass { Faker::Number.decimal(r_digits: 2) }
    surface_temperature_in_k { Faker::Number.decimal(r_digits: 2) }

    solar_system
  end
end
