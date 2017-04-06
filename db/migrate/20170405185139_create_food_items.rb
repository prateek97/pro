class CreateFoodItems < ActiveRecord::Migration[5.0]
  def change
    create_table :food_items do |t|
      t.text :description
      t.string :name
      t.decimal :price
      t.references :section, foreign_key: true
      t.string :image_url

      t.timestamps
    end
  end
end
