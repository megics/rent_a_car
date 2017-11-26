class AddBrandIdToModel < ActiveRecord::Migration[5.1]
  def change
    add_reference :models, :brand, foreign_key: true
  end
end
