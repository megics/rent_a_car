class Rental < ApplicationRecord
  belongs_to :customer, class_name:"Customer", foreign_key: "customer_id"
  belongs_to :vehicle, class_name:"Vehicle", foreign_key: "vehicle_id"
end
