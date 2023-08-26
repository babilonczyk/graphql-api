class SolarSystem < ApplicationRecord
  has_one :star, dependent: :destroy
  has_many :planets, dependent: :destroy
end
