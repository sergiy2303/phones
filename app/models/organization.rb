class Organization < ApplicationRecord
  has_many :departaments, dependent: :destroy
end
