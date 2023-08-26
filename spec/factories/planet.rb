FactoryBot.define do
  factory :planet do
    name { Faker::Space.planet }
    description { Faker::Lorem.paragraph }
    position { Faker::Number.between(from: 1, to: 9) }
    radious_in_km { Faker::Number.decimal(r_digits: 2) }
    mass { Faker::Number.decimal(r_digits: 2) }
    orbit_in_days { Faker::Number.decimal(r_digits: 2) }

    solar_system
  end
end
