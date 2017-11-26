class Model < ApplicationRecord
  has_many :vehicles
  belongs_to :brand
end
