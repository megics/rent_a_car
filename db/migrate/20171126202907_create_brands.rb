class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table :brands do |t|
      t.string :brandName
      t.text :brandDesc

      t.timestamps
    end
  end
end
