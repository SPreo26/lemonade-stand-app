class AddPurchaserSourceToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :purchaser_source, :string
  end
end
