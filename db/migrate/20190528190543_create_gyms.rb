class CreateGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.integer :price_in_cents

      t.timestamps
    end
  end
end
