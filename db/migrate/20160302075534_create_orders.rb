class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :widget, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true
      t.integer :quantity
      t.string :shipment_status

      t.timestamps null: false
    end
  end
end
