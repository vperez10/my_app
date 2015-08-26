class CreateAdditionalItems < ActiveRecord::Migration
  def change
    create_table :additional_items do |t|
      t.string :item
      t.integer :quantity
      t.decimal :expected_cost
      t.integer :store_id

      t.timestamps null: false
    end
  end
end
