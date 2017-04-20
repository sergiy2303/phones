class Organization < ApplicationRecord
  has_many :departaments, dependent: :destroy
  has_many :persons, through: :departaments, dependent: :destroy
end
