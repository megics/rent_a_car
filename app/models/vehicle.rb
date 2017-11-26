class Vehicle < ApplicationRecord
  validates :licensePlate, presence: true, length: { is: 7 }
  validates :kilometer, presence: true
  validates :year, presence: true, length: { is: 4 }
  validates :rentMoney, presence: true
  belongs_to :model, class_name: "Model", foreign_key: "model_id"
  belongs_to :category, class_name: "Category", foreign_key: "category_id"
end
