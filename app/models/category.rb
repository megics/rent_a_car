class Category < ApplicationRecord
  has_many :vehicles
  def with_name
    "#{catName}"
  end
end
