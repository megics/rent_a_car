class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.datetime :startDate
      t.datetime :finishDate
      t.boolean :paymentSt, default: false

      t.timestamps
    end
  end
end
