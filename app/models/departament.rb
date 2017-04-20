class Departament < ApplicationRecord
  belongs_to :organization
  has_many :units, dependent: :destroy
end
