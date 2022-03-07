class AddDoneToDonation < ActiveRecord::Migration[6.1]
  def change
    add_column :donations, :done, :boolean
  end
end
