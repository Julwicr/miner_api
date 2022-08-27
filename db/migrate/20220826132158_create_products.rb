class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.references :product_category, null: false, foreign_key: true
      t.references :product_inventory, null: false, foreign_key: true
      t.string :img_path
      t.integer :article_number

      t.timestamps
    end
  end
end
