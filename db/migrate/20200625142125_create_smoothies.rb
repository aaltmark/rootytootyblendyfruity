class CreateSmoothies < ActiveRecord::Migration[6.0]
  def change
    create_table :smoothies do |t|
      t.string :name
      t.integer :quantity
      t.integer :ingredients_id

      t.timestamps
    end
  end
end
