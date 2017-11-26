class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :cusFName
      t.string :cusLName
      t.boolean :cusGender, default: false
      t.string :cusMail
      t.string :cusPhone
      t.text :cusAdress
      t.timestamps
    end
  end
end
