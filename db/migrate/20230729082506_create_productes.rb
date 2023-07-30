class CreateProductes < ActiveRecord::Migration[6.0]
  def change
    create_table :productes do |t|
      t.string  :product_name, null: false
      t.text    :product_description, null: false
      t.integer :product_cost, null: false
      t.integer :category_id, null: false
      t.integer :commodity_condition_id, null: false
      t.integer :shipping_cost_id, null: false
      t.integer :prefecture_id, null: false
      t.integer :estimated_shipping_date_id, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
