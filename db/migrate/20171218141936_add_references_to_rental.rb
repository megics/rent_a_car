class AddReferencesToRental < ActiveRecord::Migration[5.1]
  def change
    add_reference :rentals, :vehicle, foreign_key: true
    add_reference :rentals, :customer, foreign_key: true
  end
end