class Customer < ApplicationRecord
  has_many :rentals
  def full_name
    "#{self.cusFName} #{self.cusLName}"
  end
end
