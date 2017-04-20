class Departament < ApplicationRecord
  belongs_to :organizations
  has_many :personals, dependent: :destroy
end
