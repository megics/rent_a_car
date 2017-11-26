class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :licensePlate, unique: true
      t.string :kilometer
      t.string :year
      t.string :engineCapacity
      t.integer :rentMoney
      t.datetime :inspectionDate
      t.boolean :rented, default: false

      t.timestamps
    end
  end
end
