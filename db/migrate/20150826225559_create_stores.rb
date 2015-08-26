class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :type
      t.string :name
      t.string :address
      t.string :hours

      t.timestamps null: false
    end
  end
end
