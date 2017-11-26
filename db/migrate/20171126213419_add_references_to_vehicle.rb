class AddReferencesToVehicle < ActiveRecord::Migration[5.1]
  def change
    add_reference :vehicles, :category, foreign_key: true
    add_reference :vehicles, :model, foreign_key: true
  end
end
