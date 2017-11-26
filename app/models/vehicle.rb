class Vehicle < ApplicationRecord
  validates :licensePlate, presence: true, length: { is: 7 }
  validates :kilometer, presence: true
  validates :year, presence: true, length: { is: 4 }
  validates :rentMoney, presence: true
end
