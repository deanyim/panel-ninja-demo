class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string :name
      t.string :sku
      t.references :seller, index: true, foreign_key: true
      t.decimal :price
      t.text :description

      t.timestamps null: false
    end
  end
end
