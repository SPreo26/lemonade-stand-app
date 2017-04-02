class CreateLemons < ActiveRecord::Migration
  def change
    create_table :lemons do |t|
      t.integer :quantity
      t.float :price
      t.datetime :date_used

      t.timestamps null: false
    end
  end
end
