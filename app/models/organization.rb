class Organization < ApplicationRecord
  has_many :departaments, dependent: :destroy
  has_many :units
end
