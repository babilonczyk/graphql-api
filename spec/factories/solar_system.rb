FactoryBot.define do
  factory :solar_system do
    sequence(:name) { |n| "System #{n}" }
    description { Faker::Lorem.paragraph }
    age_in_bn { Faker::Number.decimal(l_digits: 2) }

    trait :with_star_and_planets do
      transient do
        planets_count { 3 }
      end

      after(:create) do |solar_system, evaluator|
        create(:star, solar_system: solar_system)
        create_list(:planet, evaluator.planets_count, solar_system: solar_system)
      end
    end
  end
end
