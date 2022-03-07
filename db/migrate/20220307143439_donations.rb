class AddQuantityToDonations < ActiveRecord::Migration[6.1]
  def change
    add_column :donations, :quantity, :integer
  end
end
