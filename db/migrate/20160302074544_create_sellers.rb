class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :subscription_plan
      t.string :trial_plan
      t.datetime :trial_ends_at
      t.boolean :is_credit_card_linked
      t.text :comment

      t.timestamps null: false
    end
  end
end
