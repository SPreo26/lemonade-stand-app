class AddColumnsToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :quantity, :integer 
    add_column :expenses, :price, :float
    add_column :expenses, :date_used, :datetime 
  end
end
